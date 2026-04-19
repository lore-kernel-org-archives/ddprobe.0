Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1311A683B
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776627454; cv=none; b=forrkvO2pXJPY6ZD1VU8GKQPJSyYphyHwTUoEccpUDmufCgeXLSA4YgHv2RxXYchEnolnO2Pf/lVEVDAzG7Ih0pPZ0V3wEeDM7vJUwJsOpoG0Mq8YnIzmVXeqENI1q7voQyh4F1VYVGZHO1TEIps0nU/747F2qEvi0YMCzRli7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776627454; c=relaxed/simple;
	bh=1SaQv56IrHh4wvk7uQVYINguHrAleDHSt4c3OPbKyYM=;
	h=To:Subject:From:Message-Id:Date; b=mopP0uMZx2MQX1ZHITIQ+PsYoTQ/OBuvEXOY3DmMt+8he3AF8x6TcD8O99HnrCdNf1XgF6i/5ANukl5eGcmlk+R6SV9J+ldLclJVety2loroEATmf+PToXvq5yi2bmo5AU/UxVOpu0Cs101ZXkfxH+1P5Qkj2wFt5kMWjOMSTFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8F1TMAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8F1TMAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF898C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776627453;
	bh=1SaQv56IrHh4wvk7uQVYINguHrAleDHSt4c3OPbKyYM=;
	h=To:Subject:From:Date:From;
	b=A8F1TMAmMuuC/o6atFdHglyvYxwdq7UxfnQj+2JSoFVNmTUnPEMBBQtoD13Gq6z7y
	 vDiySyQtxsbtJlcadPNLmVjQ72CCIJTBfTl/Af9dGSkBGqfGBf90tXPdfPqeY6FtaM
	 AxXY5+Nk21u57NcrDItewTkR/DUxve+YJJ87Quc77Bhtru0tGwx2fzZUkQnmQ3S1Rc
	 f/au2ncEPs4Fc1a6icBaitIA2s1z53z8FNnNIiYqpMcPn8zXccGxPTzYnETismD/vD
	 n5nZPOBlDlHYZt9SQDTcPmxjuhdNzD5VurpjnZJr/X+JeuUV1A3NtoP7e1Y2R7nR9d
	 2uTz+R3u0AQwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF52EA7197
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662745369.23215.5217868560823700010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af24c79c65ef35210ae18c23288689dc53b501800cb1eda82ff2d2c2fce2bf0c
Date: Sun, 19 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776627453
