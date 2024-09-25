Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335A51D5AB3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727278554; cv=none; b=EXVhIGtunwPOEz3pisSbTSt4dXRmEMqPiMZuT7224DlOiSCT9n96MNpEcDV5Pc89TP8tkfgA0+8//9N0cy+/WMeC9gKgFvcebeJs8o6wnlkRxq+gEQcAp2RDTKMspyUox/yMUv/Niv+ay5G/9nvRXEhwzViPVZX+VQLR1mBgSOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727278554; c=relaxed/simple;
	bh=wiZnAVHMRcP6h0/S/bkVvPOvfWZUDODkheV3ExLyJZ8=;
	h=To:Subject:From:Message-Id:Date; b=Ra93KQ8DpRZ0jqpMX7cOr340IuqnEDFBflPCXzK7oEz7xbdUFcepJ5aa5ZviUUBIED5ZAXgC5jyuuVaBG6chRlYngAJh3oS3G7548lsq8BrfoPkLx4u8XwpMfLWH8eoVVuiQda58kmBHayFK7DWiALPLJEeGMhoEr7iHFKJb/Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3mHjm5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3mHjm5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3047C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727278553;
	bh=wiZnAVHMRcP6h0/S/bkVvPOvfWZUDODkheV3ExLyJZ8=;
	h=To:Subject:From:Date:From;
	b=D3mHjm5fp1WyGQEwqGNm76BalB/2AjhNr14oZ1YT1iZumDumEtoshGngh1nKYcusT
	 9wgsNfpJvZhMhlMhF4yIalY/IK4DQHAeuAt9+LwT2SEIjlb0Re4FxuUtuzJS3R9I5K
	 T0qCx9m6wmmL1wGCBPp6fttAWNVMjkm6StsRk8H1JxXlJ/BCZJ8in2JeX4DD94Xs5+
	 YAgLAAv7sishpJz4tgafKQpUF5kuvMGCzhklaxb9D/vHs7w0J19JfpXbYef0vEv2aP
	 NQSnLftQZfAhNQHexgsCDhHRddSUAe30f05IVrzB/FDaSDjX/mArCNNMmS34ZR9ueZ
	 IbkYrrPSe5eng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91811CCF9E6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727855358.4654.6571518873600638053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77b4729538d867062ea05421683c0927341805ea343293ce923a53ebaaa6d14
Date: Wed, 25 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727278553
