Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220021D5145
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749367794; cv=none; b=BOzKk+NiXvYXAEOkBgaIxcRe46pMZeQBXlrtra92buH1hkj1Zoj1xXTQhZKuR7dx9r7f77UQoxeZqVFI6mU84B9pY0GvEmVH4chezALrSejJZW1XfGeBsH2QepwV93Pb14cc5EnKQ50AfpVLqL3/qTK6/XxldfznkDQn28QvVMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749367794; c=relaxed/simple;
	bh=Zt2xzNR4HhPL6OWGSq6yQr3qFEK1+VtKfvPhqxrjWCg=;
	h=To:Subject:From:Message-Id:Date; b=owbUMMg/RiptWCjrUcEyo0L4ED1af/csA7oNoUABuT4h0cRwof/dhQ5sRD6BsylM9zKIL6x1RKqW/VXVAetD4qPF1vneTNmooFuum0Jc1qQNhArrIX1FwNnhMrakINQHDvjw1ZePz/DlSRTs+utmbxBg6yiWSB1jTOc/m3Zl/Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKnb1F2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKnb1F2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F13C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749367793;
	bh=Zt2xzNR4HhPL6OWGSq6yQr3qFEK1+VtKfvPhqxrjWCg=;
	h=To:Subject:From:Date:From;
	b=kKnb1F2ELYYAPBe4Ov/66rcCtyfUj8ZXLW5/hQ/YFpUJ7fo/HSbh1fE4/O/eVwKsk
	 edqwfgHqnMrEVHfNt2AUM91T9jXh6zCniFrdWVc9wnZQxQt+gS5bzhxt0xGfmsRM3j
	 v/CLYyJxuqwmf+BsrTvKEcrwUrHiR1h7M0DAaixSDPi8JrOunqOEC0hlTEs5FJ0vk5
	 2sNxamZEwSOuemqjzk7MRHkZP36f/S+AduhI18twyiMpnwKFHAVkRsiW/uSn8qrYNM
	 lP/KCTALL5uvODir7rRMi9IBqpYnkw466WpWuq/G+Q4MEMGh0M0qOT51FeQJ1RkJJ/
	 pwSwZ/q/PUJrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A6C61CE8
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936779357.22879.5826738357602213335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8463ce7b09cc760d8f6ef1611887b0a405032e72a29287b9d69760e5b3b86b
Date: Sun, 08 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749367793
