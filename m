Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319A23B775E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775568334; cv=none; b=HYSCUqXiJgBGkc6QTqvUfo68WhM50WMBZYbYngyJA4nzmpyxn/hprumimh2PJ0H0OQmG0TnbXqkSAQX5Bjhi800gd1FEsfxY0gQNlxlZF/HqfOgMzSOaz4Iv1V6Pg6ax3076aLsgBigrADhmhfsyPMoltdfgmVMkEN/Dyf11HO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775568334; c=relaxed/simple;
	bh=AtVCpZSpdn/apxgrUmcIkPaecmkFXiZO2ZUgkJBGgyw=;
	h=To:Subject:From:Message-Id:Date; b=D5IdSBFg2Qrk13beIQbNPLyHRN5uT2Pem9H6FK4Ox+rZ+o1y32M/ZT652+4PPLQ6w+gKo8oVPx3FCJA4mM6T6EN0CtKSk73pDWf3UiKxxxXrwc3oib0wOLOYacljzhRxuzlWP5YwHXhpq18yfpUMOXO6RD+o+bb95USK1q8O8vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prI4qt2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prI4qt2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F03C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775568333;
	bh=AtVCpZSpdn/apxgrUmcIkPaecmkFXiZO2ZUgkJBGgyw=;
	h=To:Subject:From:Date:From;
	b=prI4qt2Azn+S4Jpbq8/KieZp+GE48dOozLdwaCSmIVXv3BIW+DYk9oiCFFAW5dD/w
	 DzbouZI6IdWQSskqIbNJR3wdfD3lz8C1MFrKtPWNKg5OUK0n45OIo5m4hS8mIv5+qF
	 OPJkdld0xcSLDijLP62SRf892aQyfHnWfWPOCrkVAMHcNEPm/eS8u/hBRRj+H9bOgx
	 IydrGKFwrsjsfeO/8Y+VtxOdJ/69c2EI2CIAyF1w2b+PI6EnK9vWC3jRlwYwM++EGf
	 z63r5svNY+fUmJ0vgSMDQ4hiz7aP64kFzBv3jveg8j6aSHg8M+LknppmI7Ulj8PEP2
	 xfSQlCqN3LiVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B418CFEEF41
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556833372.19274.3931904149052193382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42d895a16441bce824e0683807544c89d984db17ec269cd0a1af330bfddcd6f
Date: Tue, 07 Apr 2026 13:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775568333
