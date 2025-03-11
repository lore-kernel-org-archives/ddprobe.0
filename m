Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E561487E9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741700934; cv=none; b=se0EImF8v5lNGOIJZ8UBYNcTSpyxDna4juVftEhe3i2oIYae8ewaoQCifr86RYmES+FaPobMSKAdO3G+uwSPiNzz+m+Chkr4+Dnug9VNDoRq+a92nUH/2bk8/alim55ro8CNBOfsZP62/ED4zG0GDmWN+NgOXIueH0iol/5L3cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741700934; c=relaxed/simple;
	bh=6t5U6vniGh6GGHFBJbYkIvgbREi3IWECjpnIZ8JpGrw=;
	h=To:Subject:From:Message-Id:Date; b=NnNXsCU8BJezBPKPHLDu4t6mGc2fPH9fBa6bB/R0v7txP3qlVUTOFeeb5FDXvJbm/SnYLFuOAUmtNAB9p2V3KJqsytem92xZ/Pz7BW1gU6o587mSiuD3aBHplhwbql0MgzVHLu1b83RD+TEnBij05/gfX6dH/RfGEj/Fq30fvsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7hvdJ+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7hvdJ+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F49C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741700933;
	bh=6t5U6vniGh6GGHFBJbYkIvgbREi3IWECjpnIZ8JpGrw=;
	h=To:Subject:From:Date:From;
	b=p7hvdJ+29664yZ4kRKf6SK3whzSiP2uYcScSklXYZ8hG4bKgp/3pIKGKFaVW3EEG2
	 1ZPeYQvS9rTH4/ybPHEhPLnf8HGHGuPyqtRCkjzh2xsmUliSVVLZAZIHizOzpkx8Zp
	 JmoXv4b3cOVG1i0mVjwejss/1ZVvhtDXEO2oXo3E12n7TPdCLdnBdiLqSNl5KvczPs
	 pHPoKCV7RDkvng651DZnNWx2i/fY948lBilz2Lcdrcvu13lHRfAq6WF9to6nef/AiM
	 o41/y45ZRq/3VXvpPMYQ5pjN01MWftT4IksDYGZ43TBdKOBD659OjYYPKjcnsJvo3w
	 8c8KwqqzMsZ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F41C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170093360.24181.8722367107761890310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1cf8bebfca767d3613f99e713abd2c7e8f0b1d088e46196e49604b5f4725ed
Date: Tue, 11 Mar 2025 13:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741700933
