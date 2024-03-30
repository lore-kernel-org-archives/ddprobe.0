Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4E0A936
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711813697; cv=none; b=NTkwvpz3OctiPdvOu80qN4tfZibqbICk2cBS7V3I05x8kObljGnYWlbyXXiSHx3ILAF0VcjDz8T8qkKNVXWxiVAHfHP0dTAJcqcJyaCOG4Ct6MbzKtswCsjPokJdZJArLT3PrjjkBorVrW9kAVZbQtDztU+4lRLHx4p/fHVmJb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711813697; c=relaxed/simple;
	bh=4+/QAfTPjdcTJ2L3ua1wOBC96X0J6vhslbmwjBR248E=;
	h=To:Subject:From:Message-Id:Date; b=LVpoOGcCLQX1LZwqfW5Vhvr3F+tZAm7RhTs5aPmdf+IeXFeHPzB1RWumemlhvVa9FhNEd9g7DreLlx3Z8/hlctCsFKNqJ9DNuflRYk8THN8lw9TMpaiKcTUCV4bUU2hD9XMSXRczdIqcSvwH9PF6IFr8Khzzs6EMzp2GOEehKGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uW6utYDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW6utYDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3E5C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711813696;
	bh=4+/QAfTPjdcTJ2L3ua1wOBC96X0J6vhslbmwjBR248E=;
	h=To:Subject:From:Date:From;
	b=uW6utYDLV2KLVC718paWTnaDCL3UmELdEpuy6LhPm1QQ8IcAxgYt4HEyTcTZOLAZV
	 Y0AwecLDVjH7S1OoqOBP8UZKUWIqCwg8L516W21VIAiSJdKLS3gvZkdaKyBfPCXEyb
	 rqNhFEURXORlBs9Spz2k3wyXNcJB7jH5j424Lp9VAcur9NgrOegcLrbp3/hqSnnJgr
	 Tc64MInlKwsRoJeCsWz8EXXYQHsm5C+qkMcF1d2M4rZKjgB9gDXRNtBcQ1v5JS0Y6a
	 nrLAN7pooeHtGdI5N/FehC2JLoOQ0I9Q+JZTARDB52Y8dNH11PZVI6a1TTyeGs8blw
	 qPQUinFj87wAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BE5C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171181369640.18588.17136494105841630238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917522028c9060843c42ae92b4153d475ff8d92b2c8e935d3967c5b917617460
Date: Sat, 30 Mar 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711813696
