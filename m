Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486A7163
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747388996; cv=none; b=HI2QiQkQMYPE0dSpFddqAsVtUzo3TryIwLDrLVRQ2mO5y2va/v2WaWT6c8AM1pwPyF+91p1cna+L6m2Ego+93KjBzELo2rJsv43BPK6H/uAfGclGaQ1BjXtBNDv9GvPGuafzIsVuOZqpTFL3XeBX8TBhTGcHPf/O5m6jMKUze0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747388996; c=relaxed/simple;
	bh=c/sM2DWJZQz4nlJJl6SXLCrhJTAkNxwyKqIIfm3Uh/8=;
	h=To:Subject:From:Message-Id:Date; b=glRJKYiOZI7dzSXSeWR6ixjMiWHCcaFqwcEkRQfu1MRMrIlCsUxWpoT6HYhTf0uRuknNvLYQ3ka5lvhrDohbcEPXDNbt51NYcwEmHnRhkHEdgnGd/VcNOiMGoE7EYcHd0MuOBvJkPnD4EBVb9VnYkC0sbFvKAwzgrHa89Iz+Zh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJ95KOkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJ95KOkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3857C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747388993;
	bh=c/sM2DWJZQz4nlJJl6SXLCrhJTAkNxwyKqIIfm3Uh/8=;
	h=To:Subject:From:Date:From;
	b=HJ95KOktTpFuJPWkD1yBR09ALCt4lEoBM1xy4EEOQc77YCI6G5+ujyH3ZR9XHQZ4h
	 DTj0XasmtBdyW7oCkh6TP7KDq4o9ur09k+iD4ieCfsXAmEK7cf2WYjpF523l49UsVm
	 OakHrJXpM7V/kHNZpuJ8uZOqUXN5iDO9E7xXzmzl6Bu1uKzIS1XfmS6oOzLLrToHcR
	 Tz2l903OE37KKTR8Oq0J70B9JS1vSfEIhhMgL4NV/COS0Uuy4b0gSv5YDP6oO5h8Q/
	 LZ2K2QrFRFCCoApcp9Llx+wjct9g9x3v5dMeF8l5DPyEetGDemA2Cg6+S3QyE9UzFN
	 vL3v2uzOxqVTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C3C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738899357.5357.11525055374090607157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf90b3303331e0efce6a7573947e614c9e54ed39c5f601def1519ec82938b27f
Date: Fri, 16 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747388993
