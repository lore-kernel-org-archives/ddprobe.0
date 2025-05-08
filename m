Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAC8221D88
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746746994; cv=none; b=fNG861Df4SMF9Tcc8D79NK40pNMNxXwv6wCHfkmJMXPiV0D0zx59GH2/FDgxAXUGe+1C0zO7m9+5KbdG8pdEgUxZdf58ic07PUNICGMWEeOVVOvCgRe9o6Cx+IsiNXBnwQAPoyrFZ/V/xw6Syo0oYa1tTgb22uHvhRrpLjZqpiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746746994; c=relaxed/simple;
	bh=lE/wt4YYS0GyBSy8KPVs/cUgXMPAEzhIkXe5HgPG3MQ=;
	h=To:Subject:From:Message-Id:Date; b=VFD25p47doy8puRfXzWcIhN2Ua2PcGmg5domlG+DhJpqtBIbJSXYDPXjXU/UKxkQ5RiQkruW+S3a7ZUfGRf54IQ2H5BZLQ1va50N8/+Jojg0NmvykdACP4U43HsK4maw9IovSCs3EbSfFMIEfyF2aytjOX1n4vU0TX0qrPO6cKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvPdYkm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvPdYkm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F01FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746746993;
	bh=lE/wt4YYS0GyBSy8KPVs/cUgXMPAEzhIkXe5HgPG3MQ=;
	h=To:Subject:From:Date:From;
	b=KvPdYkm55Iu5eisb2kzWB/3cOC9dy9dpxrQ8uW4ti+dRWN1/qOSxxO1a5XVTKRIgJ
	 E+ikvHHknRz9uhGeX+Yr+poehpluQluDChn2pb5G0zhVJPHXxvmBuQMXRgKpW9HHC0
	 x9ccPdCe2lzZcP8ahb3FjsVSzkuVCaRIuM0w7cuc5k4pelpuLf1m6X+7aSac+VoYt5
	 LgYLnTLSf6++DcwDy5WOIc5dtdRROJVzws3KlyBl6xcTJluHCoSQepJUrtYuAtU883
	 8UprOC5K2neIHHJPgseWfxKs3LpSpVjRRq6nX/RTCSaDkz4ShpOOFZ2nwfy71gq071
	 mU1C6Fmr3xqKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F343C3ABC5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674699357.12510.16413679062748652246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed29f21a18747c201403db5bebdd10380c0edbe51a6b92f072f7fd3a692aef95
Date: Thu, 08 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746746993
