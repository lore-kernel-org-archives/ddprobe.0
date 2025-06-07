Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E681F4CB7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749296394; cv=none; b=fyF1ytkhvwej1OPM1to+W14IhLRs39mH4F9I34cYvmVaoa/E6uHDbc4l1wtbZpdLspIb8W+7BQzzIfRbM0PM6kyIy+ZX5rX2X0bDj54H7wlhejNWyXWI3X6zPfENtwPLIPElSK7mUUVeQ0a6JMNCq7cHDhILkmMANRWPIUl8ods=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749296394; c=relaxed/simple;
	bh=tQwlwaqbVIdRV0BcTQc5BkTGSaWiJ8p0Nib0YZOhZxM=;
	h=To:Subject:From:Message-Id:Date; b=r0SWk5pcxo89In7ZuejFn0p5lUeTNPQBHQNco4J/qRS3H3FMBPuxWHGRVrS6eSRrK7pRg0zdJDFBBi91f3kd6VYv5hS9sDXk1WPlgsVulQ24daEFgB2x79ozOi+cMOHwKjfp1tq40aqJw3yakXScgR7bev1aF5qjrZR4kNaWI/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4BTwDOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4BTwDOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C28C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749296393;
	bh=tQwlwaqbVIdRV0BcTQc5BkTGSaWiJ8p0Nib0YZOhZxM=;
	h=To:Subject:From:Date:From;
	b=f4BTwDOzZox+t4X0Me+r4lLwV0zqV78GHmTRo8KO4ndZzg6KQEvRa8W2sgKts6s1V
	 aSuqzcduIG/Im/Vwho0tTD90G1D1w08i/5MD/8yNLMdwlAqLx8rhnK+0S0Ae/jpjSc
	 p7LXlc4H2EKj/RzKJFGXzonnjKqyzNM+pPhTBNBRjRRiE+DcT6d2BgfDv0EEr/Hp1m
	 5Ib2Z/NwLq6dM21eLDLuEX6F7BMdKpBDo5zXuXrr4qNvlLaCyL4pDWu0DhfmtID+3R
	 MnXGJG69Qc9DPOul6GMKWW+2qr1u+GaQ0kzZOPnfcroidIrIjbiK/Mmzl3i096DOqd
	 uhJteUeGfRRzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A9C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929639357.28752.16955895993190858096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb479d132ca3ac6021417d3bbc5f1fe08feba1e281ea9e996759f26ddcaba91
Date: Sat, 07 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749296393
