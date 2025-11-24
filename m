Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5A8277CAF
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763951514; cv=none; b=dXVPDRr5ZOGSyFum7FD0I1Bza5lE0+fQjZEH+kKtANau9W6a3EWDRz7ZCcs5IaKJbvMgm2Q8nAzwt4RnUphvBwLJZKoipA5mPy7n2rlDJ5BCPH75oex9hBj/X6Ctoe/bMCgEF7r0k9qI5Pzx7YQBVm3es0d55SBbJQ0hDM+q7Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763951514; c=relaxed/simple;
	bh=Us1FP2Mgn3fKLhteG3O+Hr70GAixz+BtGHRVo9oMqco=;
	h=To:Subject:From:Message-Id:Date; b=UCS3FmBRX58MMLdbFy4E1jG70wrTIy9JFtcfYX7vthxEaUTPDJHbKr4AOq9fx48J6WKd3tdsZlpjWVB8fpwCp87RHoWvpqmC9l49vI1AmZMSDuuomZOWlv6aHEbWMaTxuDcMzxqtKXPyu9Q4hDrVEQ/jXtnJxLrpTHc+tfj3sbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/s114Zu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/s114Zu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C53C113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763951513;
	bh=Us1FP2Mgn3fKLhteG3O+Hr70GAixz+BtGHRVo9oMqco=;
	h=To:Subject:From:Date:From;
	b=V/s114Zu8T1ePPiI0x3P0gMoNaCL6Ts9OTOsUejCj2TE+zlpQ0mw/aTSk1TsxRlCk
	 AOjy57Wi8AYpa262avhqgCCwTk+PQtDH0Yfi1G9EHdztie2sadyVlBrYnsnL0hZVfB
	 Qu4gXb1om/IEnYuNvK9cI9t2CRcMKrmNNOVwb0N/U2SsegMqCseEs6C852bPIgsWKz
	 O5RwT2nQRajuLx5/VSrsT2up4onIT0TdioBw2r1k1W3M/VxA2M1XR5nYaSL3D51YGD
	 9qWvG2y5JEAS35yR96c3K5ulChoVpW0BqTERvoDjbFYWqDqDT+gsI2k8Qv4Ewfj1cQ
	 x4gXrmujGheBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963A5CFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395151360.10828.11971706290258225773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8596dd120a8fbaa27564defcc53b30b0161e4ebe4c77c6406f19e666d4957b5
Date: Mon, 24 Nov 2025 02:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763951513
