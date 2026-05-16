Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E142C375A
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778913034; cv=none; b=RsdYRV4Wxoc5PkFaXFGRbFDtfJ9BeIrp+JbNvDUECasW61eDDlqbMTSEpEnolx8pk3GCbAes69y2LYhiAtO1//flUNl1Cwm3PY/ik2P7DpYV6zLzrlx+AHd8YNO9vbJL5IIzmcezSjBJptokLg5lQ50Mv/Exzs4KdMmPNDKmfEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778913034; c=relaxed/simple;
	bh=NqFy6/GrEVF1+iQUqtzfYJLCwafe9Ysexp6u/BnaaiQ=;
	h=To:Subject:From:Message-Id:Date; b=AvHLQIaNouz1TRB+NzKG6XSIapzEeM0WJwdV8z95RTqtNLEEx93RIWupmK9IR5QMs+Vlq1i3Pj56kwqVXM+cWOeZpTLn6m22jIRMM0NW5vKylhUlEJyTd+FSEEvLrmvHPI5e81+rFzrSpuwF8rxyigLfrGoctnycbvETTXlWmg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j26CZx/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j26CZx/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB66C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778913033;
	bh=NqFy6/GrEVF1+iQUqtzfYJLCwafe9Ysexp6u/BnaaiQ=;
	h=To:Subject:From:Date:From;
	b=j26CZx/mutzOPTcGO/gocl8F4Hj4C3EUC2iviotOB0ux7ERnWCrBGih2QnYsoFwUS
	 EFr2nVRiEdYuzECn28/IVnsFmmcChbIniMBmZfE8uZhWCeTHjdn1FO6cWmjNmAzDa3
	 mZwZrCroN2Nr5WB2cNTBEgbzWNZcx/M67M4XvFykHKkYPbQcQI4w1/JZeQqaVyUoIj
	 MWq3GHmKE/6FRe4fX4exkpDUffwvgGLiWJG5wruGNo9BnzMjJbHg/7VxpA9rNLQp2u
	 ykDpFLr+zBgAmXu6HvA7s5T2iFWZkEJJVXdmDIAR5bSIMsYVnUDhSHhlV0KVw8JLQ3
	 vKFvzVArL/ZUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC873CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891303369.8960.5616278527305887237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903da0e6186e969a2f08caa18c6cfa79d79729ff76f0db6fcc6c368233aec08d
Date: Sat, 16 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778913033
