Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484BC375ACB
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785999634; cv=none; b=tx814YcnWDMpMWZEwb1DBwsVNUtFO4xCcd5PZaZieyJmDqwbP4sSJ2304t5rn0qIqgkSPtq1Fbjut4s3+Aglmm9kaSyJWE8st3N0uxmwWGzIFpa+Oe90oih5lrwE/CmiIhUELeDfwBZIclnRCQR2kuaEJsbGDuQ5hs9wjHGfSH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785999634; c=relaxed/simple;
	bh=OnzMTF8DTuf0YKmvgpQnegoMHCyStLBFJ1SMIEufbeY=;
	h=To:Subject:From:Message-Id:Date; b=Rj1TcLrgDZcfhLNOSP/wnzCW+DUKReDt6nQ/n6WX1wAVaCjBHcp4tTdQG1NvodsiyWiclk+4YxxP8fwmE4tQ9jzDj3RoyfZpHrGY5L18h6uK8fgBFsYkKqbDgZQ6hb3JdkKAXAwplwC8YfzI4gMs1GyfPtKYdmo5AXQuGEF69g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4PbZk5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4PbZk5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C86C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785999633;
	bh=OnzMTF8DTuf0YKmvgpQnegoMHCyStLBFJ1SMIEufbeY=;
	h=To:Subject:From:Date:From;
	b=V4PbZk5kuFk9hcppuQ3VDOUobRZ4sjbxSnHTe7RmPNkJB/jzqVf7QWnC+OpY52HcN
	 DBkVqumsUdWVo9bgI/z2IKWWts3s5dLA08UMBa5OkZylm5YTHCLnsADnDHSTquaIvm
	 rwI7DlfiJ6YWNirenxOn/zE7wlIJpP3HlZutkZcOs7qcdgEaAFm+39q29FNPL+OgbW
	 GvR1O8e2pbxRXLwsUbiVxFW+D0EfKVGsPCaVjWEHXlLSWEe+4pjHdKoiQppf+hRbpc
	 0PwVACpQCyATCbJD7noqDjZzsY0JeZW2EentWhpB1xT9q26oiQ8V7V+EH6AGBDnUuy
	 tKh5WB/YR4ofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBA8C55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599963369.28743.10080465644171783186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b770109a48c23111385b1dff6823f3529f467d3655d8ab63e07243e13a79f4a8
Date: Thu, 06 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785999633
