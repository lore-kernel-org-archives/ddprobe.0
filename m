Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBCD304BC6
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767635634; cv=none; b=rudvm12Vm3W/2V6Frsc0ao5nGiWDwRmgSFEziquMNvC8ebxkJGUPsrzQCPXRfLPf134DVHRREF/CdQSsM1uysTnkL6GzqSKkzkl+TIDZeM1NirJl1rpLcu4TKTU37ofyKE5AHfOGouKhm/+Pg5bwPhd2OMT4ZXcP/EDrO0K6zjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767635634; c=relaxed/simple;
	bh=eR2nddF+Ox+SBSPiiVkINaDIwbSjXcejSYLOK3cjkVY=;
	h=To:Subject:From:Message-Id:Date; b=SITbPZ/1EFhbl7pUmqdXGlQNJQU1qeF/QjZ87oZoC3D+VtmevGhqQc2aw//n9Jd+QFHuYCZsU4iZidiGI/mDqqr0vRm97EcgEKI0/E0/+maw8irp++uObApWimZnUVcdgU/3/9c2I7GPw9LcsXVwopEW/YMv+fSDubHj3rRRy5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqp4hcjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqp4hcjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E10FC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767635633;
	bh=eR2nddF+Ox+SBSPiiVkINaDIwbSjXcejSYLOK3cjkVY=;
	h=To:Subject:From:Date:From;
	b=eqp4hcjsED3+ZZOXZGhpoKUBCcYUfZza7ih/7OIbVB5zNAB32DFUsh63fCWI/KXLj
	 Z29lZYgWVcGP2SRXt5MlbfzCM++5lpcHbvZiJshE/40Ph0aiTWyRPABrrLFhfqLuMb
	 Qzl/P32zR7yELVc1FvpvZWDju5Mh4mM1C78kTqjyUGokEKtwuFJxI0n+EcvZA99Rwh
	 kBiW8eS/OsKcgENWSY9oq0e8GA0wsOOEpOnuJWZ4OYRcdyzeoByeTK8xpV0EyVYjWz
	 MxWt7D7YFuH6rJhUwRxRTB7n8dmoRa2T7dn3XSwzaXnR+vKF2ENgDZip0tzgDQZAgE
	 UT7sSggLvHVmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F080C79FAF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763563357.4854.14977620621057307010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0df1340b2e69965c6729345e771dd4eca625ca6cd223d28ea78191e3b1789f
Date: Mon, 05 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767635633
