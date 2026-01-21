Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF1740B6D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997634; cv=none; b=HhpfwFjKniDLDBv+l5Pqroa3PX9u1kpcNV1BZgTp4wBUOr2MBdISSWGTfO2njZN9A/mxx521m5VB39ose41D9Vg/s/ovkcCWW/m7l42lAvHpTXohMIs/Mzhj7JcgVIy4yfX0aPgEGqzfZBQ68Pp5eIIX2RbcfbhH0/BBo1P8OkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997634; c=relaxed/simple;
	bh=+/aGClGuxMdSDD/F+s36TOyABSO+Rj9TJi8LR0KJMfE=;
	h=To:Subject:From:Message-Id:Date; b=kMZtV3T3GgnWwOXov8wZ4ktm0hgyWPIiniDu0eOpAf3eE5WGZ84+MyqQdllu0M3S5BVzNQaRUi75PqbChqsPN2Ed0fgCx600wpf5185btTP5ko4dLvkCMl6qiGpWLXmOqe+vdP74NxiKc727k1Zkf8AG2dW6m6eST4Hi+WZ7AZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSLUse0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSLUse0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A79C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768997633;
	bh=+/aGClGuxMdSDD/F+s36TOyABSO+Rj9TJi8LR0KJMfE=;
	h=To:Subject:From:Date:From;
	b=aSLUse0DIPg8jEFohQAw/Vx8qpRgQN+nyazwbvGrmUOvUEOGD7GFD9KtiGMH4h6jH
	 shFue9tD2TPdnmo9hWmAEK5dOTcoViVYZtkDM/p2UjrV4lYkF+HB28ihkWigKJ+Wwe
	 7dLQua4FGLi3BTIGI+F5aUO6gsON1iCkuT1eQnkwAqA40PR0zDSfsfAQ7fDB2iOG26
	 f7gMv6gLeWweTy7lDFWOC2IX0WCn6OSoaXcRJqt+wAvj8qV6GOHsVE3BTpjK+Ihlmp
	 BZEWaWiOUseY++sGruV2hvLkvpUKQktlcTdGmglhMB0Mx9QV6fD9b2Y8Ci0JkikcFN
	 YnPiptvVZgtVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A45C4450D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899763358.18719.10717012035002656910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944dcb17c56cda0336dc6e1ae096320036927824058a47d336e5b30c15b6b8d6
Date: Wed, 21 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768997633
