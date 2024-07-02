Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B06946C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719894323; cv=none; b=tsmJnMF64MoLI8uamgPKkEYdYecdADr8vUjkq0mdQq2oS+g93OFEpkLPltZX+auZ95pJqbu81A33wC8qhV+xYOaOFQFhc9eHX6v2QAzkWfDO34YPS0/43keSnHRJh2LoKI8BuofQuSAKLa1MtqND2/8x0i8WV8GZSPLbKKxueJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719894323; c=relaxed/simple;
	bh=MbsBslfb/Ysg6XCYScWcDlplp3u2tB1tG1R3hhN3fA8=;
	h=To:Subject:From:Message-Id:Date; b=Q+nEGSbT+t7mjro1ORR8pDiIDio1HWBZlEMyFLQ39+fcpN5+LXZiGwogYNSvaqkEJTHabBbrucWU6qguLntkeXfKdlGojiHIX2WnR4YpeJjgd6XQrhCUFcFq/iHvTUHhyI78dzmyaktdcJLQr1r3hBjel/E3TM4Phy2Cs3ok+Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lb3JtlCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lb3JtlCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C37C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719894322;
	bh=MbsBslfb/Ysg6XCYScWcDlplp3u2tB1tG1R3hhN3fA8=;
	h=To:Subject:From:Date:From;
	b=Lb3JtlCEbGl8kRE24MpKW5BVjwdRnKbYKUQ61k4ZqJRg/hTZJsdZdc8DdjaI/Kzji
	 ks8c7eklwDYtOST/lzSaxYYd9v6ZW3XpKK0baECCwzHfRwUSSflEcLQ3dQThBDQoNI
	 Kylt51MOkMfb1ZiNpdKK277OATGLQbKdehQgPIaDfEa9GWiTtKxgrGNAuU4JXwe3J7
	 iOxzzFyLClkoyYHE71TvKjh9/x57RtWtk0fvlioewGm75+Zz04YDzJ3iMb8w2heTyN
	 mKdigpGDgVGbyqV/nzc7k+/nVZBoDPnmn2NOT9QBOJwnaEV2OR3DjEbnkIgMBx0N5h
	 FzPlU/rxTLszw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEED7C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989432281.32365.18158744575848444510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7992b1821a8deaf13b5131af0f121205fecd6966abf418224227c2539ee8a534
Date: Tue, 02 Jul 2024 04:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719894322
