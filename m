Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291D32882B6
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766342634; cv=none; b=AfyYzIC0OBpZPjXdv0VI2kzwa6TA8nU8asrPVpzGEG81UYm8S4XcydyHdSxhXEzUDIzJ0u9LWsrdiuHZcGNsi5Rc9cDFhr4SBkb91pW8hEv7ZngAF4hASJslZOgi9MF7gYrE2vUgJmQk/zWD2KWvSeW4KayhYyCZgYQx6OPqezQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766342634; c=relaxed/simple;
	bh=40TWQ21Sq+U2nRFFU4kyZkPgwuW+yd9+ynM6pNh3JUo=;
	h=To:Subject:From:Message-Id:Date; b=mePrnuOE/nA4c4eTCessFfRNzrGWMSj5CrbC/jTFrclaDqyS5e/tQiLVvXm/GNqGwIL1Unqnso6ujc4qewCUHAUah69bJKNjTCY0gjkrAcFwYOAtkkFxbqc2/v/YMDQXbZoPvKhSjYd2SoY2vMIaA7kiI1c6CHS2rKQXsGXZns8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USCdJQis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USCdJQis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3346C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766342633;
	bh=40TWQ21Sq+U2nRFFU4kyZkPgwuW+yd9+ynM6pNh3JUo=;
	h=To:Subject:From:Date:From;
	b=USCdJQisTJy3O/UaxxBjp5eKLEjWw5+R8xBtgf5yxiFJ+hjI0NmbEsR5tig0ifRU5
	 ShXsrgHvMF8S0Y3Wk4fYE9UM7LkLYkjvnOdNjWNITKwlyjQj2uwTxmQnl3BsK+hRR0
	 y/qd/hgjvgynUHIcBRiLz0tO3IDA2Fv6IOXWVTtHwcXtM6TMwvmIeknzY5g5HjLcLN
	 W3oIy18/lJsryxxpV41nGe7VG8+Et6B8YtVivMdXWXsM/Z2vYfJED6PJJd0g596XO0
	 EmzMFyGWmYGurlOm9WH5VAXTeXOtZU8H/mkvLHYZIoiDfmDXFtfw3YkEx7aO7l7/Ut
	 uI2ABOQAOT5HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95064E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634263357.29143.12052549069454722890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320e1df8ea58659b651caa1bb5619789cda1f9487c63110cf225b55d328d8856
Date: Sun, 21 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766342633
