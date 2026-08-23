Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A7A238D54
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787511034; cv=none; b=t+fsklI93YVh9SRDUXC4dK4NPTSk676mX5H2qeABp/aUKswfrMKNb/X8T1PwccWd5W3ZR1PemSy2o+ADldo0Loagof11mmBzrM685UhUCY8RGOlBj3qOMj5peF8g7PW0iXBGBsdEHFPvlzlPOwtUywGzj+A7I1YiU00PzTi+hD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787511034; c=relaxed/simple;
	bh=6WyQVB9jm1fQYZ3N+n805fZDqmUeTcVPjj0Z3euCTL8=;
	h=To:Subject:From:Message-Id:Date; b=Bswv+GTYWB/cpuw3B9UoJpwUwPf1oOjIgBPmI2mEm2oz0Lrq3EW5nYq0toGBPKvt9Wiojdx/JNErp/PSJkM4khxF1c30SAiBLzpXAfdW58ydkp+ZxCQAfQzSs1bZ+2UP9nA+Yx2s8zt9Q7akUMEFckaV/Z2QYcbEoFt/xh12Rks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLAULu2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLAULu2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BBDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787511033;
	bh=6WyQVB9jm1fQYZ3N+n805fZDqmUeTcVPjj0Z3euCTL8=;
	h=To:Subject:From:Date:From;
	b=oLAULu2NTSYaRrM2m7+5ME8NEb9UIlygmkbC7qvY/EVw8hj9p/bgZXcJaXR97UIt2
	 Nlg+stTEMPHz5NRM4fBfPFsHo3sVLyeIVOgguH1K1zd1c+6AIwitagPVPILrBpwNhJ
	 xnhN5Gb8KIwXRf/kaEQoKiFtN07h6p3axUD14psbeBT78O5UUajmyG2902KfeHHqqu
	 Ra22GzQ3o4T0BtnU+Pg+SscU/gEzb3tAvxkMwdbcrHAooMOyHEu2vLOcDmsPq0XK9N
	 IvyD2Qn4fcy9cNqqRUi8lKoVsBS3OYGYzTcV60A9rn+nJiDfAkJIs04adaAvbEyJ3o
	 oPcJRlervHNEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDFAC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751103368.9100.4420479864301185243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbba2da2ae968562b20ff1abbb1828766ec60ab0635756793e9c4e7e937ac0f9
Date: Sun, 23 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787511033
