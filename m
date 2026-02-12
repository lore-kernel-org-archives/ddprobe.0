Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C3126E6FA
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770928493; cv=none; b=CFC7x36qPQGoIcKfqz23xfsn5/X9xJBiNn0uiRVYYvfxprb/XBRzhinnw61OK6mBirDzqNHPSp9LFC5GHR9tawxjZWZXPRgu/Br4W73RzSpHuTKS5WOB/IV0xZivlCLJEmheKLyA3etQi8kzKPujI/vO8Kp3OEfMgq6gwsoekfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770928493; c=relaxed/simple;
	bh=9JzUClOBKuhA1g8P1tpuvk1/h0rqcwsxROa83+VXMIk=;
	h=To:Subject:From:Message-Id:Date; b=m9toWuKPiBsiku1FaDGvImeiieVTzuGc/ZnxvUy5qMu86EiZcC1PBX0f5bIqqOHSNvbYkuYMv9QRBC/S5kjyUvUc9ymUohIz+yGK1QR3poyObck+cAnJ6SXzbxCHg3REpHWtqPJRNkmvIUfUILdjjP0V3X919OpFHv4gAIdTe7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSH+KFbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSH+KFbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2731C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770928493;
	bh=9JzUClOBKuhA1g8P1tpuvk1/h0rqcwsxROa83+VXMIk=;
	h=To:Subject:From:Date:From;
	b=VSH+KFbbOPV3dUb0twe9+n/TppY9RocxOwzS5+U3W8yLbZdqhOk7BPQrNmHYbz2Sk
	 J4Q+am9fe9UAPj+zPuIhNGGcneF4xvtbpmqFx7tvKiDAVGRU+5JGszqUOIoMYHqtvu
	 fLXqNqqBkt/fjMxo5t2thD4ywz2bpVj0DjEwvn1dvQCvfh81erBe5sGdBwmmZfZOb0
	 SbCFfBF6sBV6SxOfUBCVpWH5nMDF//TGuKcMvL8Y6VBaG11g0PH2wkGpS42+zX+5at
	 hUaxSNd2BnX2dwQcTIbtqMCLkDUpBaOvkSBUMk/xvok2WiIIggJdppH+XsV0Hu5MM0
	 pDhJ+cG9wPxWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1C5EEA84E
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092849362.17097.2537845078422054690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46d96d72189025f2f43bda3672b3b06065fb291f951a7284461c4ae80c32907
Date: Thu, 12 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770928493
