Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E721E491
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715730143; cv=none; b=FG/JIQPAVKo64TJvnU77x5MdhO4+zMGlUWubdMXfOeK/44xgUjO8Jhc/m/qdwiz3AamH1IERr0i5n0YRpNJyYW/uOrZReUol6Carw57zUXOaZYTdT5GcsGqJwyd3v2C1HqKpiamLxG4YcjGEQCBFVLrveaGColyr/HWop6Bc2i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715730143; c=relaxed/simple;
	bh=eOYoHWXV/VcO5oR8lBEsIp9nArZHnr+CoYpZ3y71Vb0=;
	h=To:Subject:From:Message-Id:Date; b=r3BHnGqq7xcfaz3W3o+WLcuGztiqdCUW9CJpOFM7f6NkGI1ASacvJHZ8z0O61XmkXrdbZcNGjiHvwF3B1KXL+RQTdFhMWj7HY1tSNWuGoweqFHgHRDP5noFhysSRQepGY5qr3k9gAn1v/pm4GszrYBuMbMmdThHkWLIAhkIozn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aw3TYRYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aw3TYRYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA92C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715730142;
	bh=eOYoHWXV/VcO5oR8lBEsIp9nArZHnr+CoYpZ3y71Vb0=;
	h=To:Subject:From:Date:From;
	b=Aw3TYRYqsj8XtYRSIrpt6rDYU8564yXjJEx4eClihANaaaOBRQD6OO691fZPQRBaW
	 TgW5sL1R0ZtG3ZtiaX/hu8REn7p0Wa6Ao7acy7rK66v+u95axd1JtPKewuK9F93pfo
	 MJMRvn5EUigsPlXfX2Ygfh5127PdxA6Eivq+gl7bVbg9BkqW293T03x9dWb0O2JDNG
	 3dRHC342WXf7Detei6sx/WM8dmxyUgbDf7BnvGt5BOASITn5zM/7+BApycN+QLdKN8
	 +tKmdlBI4OOIR4souRFh8dJmytqdM1RPbBNivpA/YxtQruwvKYrR8wDIi/H0mBTi3c
	 QR2xRng/J7wIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCEDC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171573014275.20956.934441189358708910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb355e029f36296755f3a7e436a3ff5f059c5c8eabb5f5e9db77a8036b9698e
Date: Tue, 14 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715730142
