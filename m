Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B3C1F2361
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750520394; cv=none; b=W8h//gdAkaCTi4G22T5J8VoIR0yxPa8LzzS9DPWzpE7gKmmqOzfoBuL1A3TljvJZtOSYcGmY3nED59Jo7vh+bS5flXxTw7YvJzErU7ZeIe8VfHMjUQhEWdyS0sNiIuTHhzRz6NL9SvogciZ2j6qLP1OzERmVgkwtd7K8/amcRIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750520394; c=relaxed/simple;
	bh=FfXTuaR3mdhqvsazEXZu58Nqb26z8KaNqnMFnrcTpY4=;
	h=To:Subject:From:Message-Id:Date; b=C4tXW88QFXi7turp3iCllv1lG2FbjTVEAqtofci+XKwus5I2NPFqYJiXNc4RaVMX9NO6/sLek2YmhG3VgREFwy5ZXMaf13alN+vSOSJZ3qHk1LxBepWESvSfNJr+XUaJOv0GTBbgq1UYm4MUopD6TzVENnz/v3qFVluEg0Io/v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbG/NNRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbG/NNRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37AEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750520393;
	bh=FfXTuaR3mdhqvsazEXZu58Nqb26z8KaNqnMFnrcTpY4=;
	h=To:Subject:From:Date:From;
	b=XbG/NNRMsLpjZx/kO/l71Uy0dEQRaZRsqI2NvfS86yIUsQFLlZUZ6aa6IvYkslEso
	 33HPWmvbZwbCUV/JBihBZn5MDY0swH3l+trjC0DlKUt581pkO+cXmfDuoraqWHdVEz
	 p/azY2WwbvMYeWEumPOIoJECliEPaWIxWtXPzPPlAwBLNbsPakT6yNSKHwIM6bTx0Q
	 1TkFQtpx48PQ/9PJntlwCskXQsXjow5wxpjNg7/VPgbLDGzpp/iGBNh7xtfMo1gB7L
	 auTUSSDzwai7Qv4M85mzpH7RfJhkkQZJE0cZrU8plt3Qqr6CiwCtTgAxaR/R8byNzr
	 QKgsPYVgdQ+4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941E3C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052039357.30167.6837092032064898274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0375e0b4e9525b5758de6652a6a889e9e478e27a4bd8351fb91d7ad80e51c97
Date: Sat, 21 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750520393
