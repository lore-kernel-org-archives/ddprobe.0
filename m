Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F27F22D78F
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744028394; cv=none; b=jweXmIGTeFZQiHUgVpzF6T8QRR/suzPxVtx+Dsf9xcOzdMXt3uwnuDXAJo+3B+b8odOrI7zC6HO+U14ITJtG8YjtuKMnglDfBccoQgxyU9fmxpt+yiDA+TvWmYAMRo31L78McwIn4gHDV/xC7GMkRGy9O7AvlK3V92/qCro4sG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744028394; c=relaxed/simple;
	bh=SqOJPXClUffw2XmGG6H7GcN8arkjmXE/hGjpbtUUAiQ=;
	h=To:Subject:From:Message-Id:Date; b=o8iGvghqO0KEek5MuTqOMhyKvV3rYWPjp0ZPY4V+E7B1BG4ImwauokVHUEr+8MjEp0cs5OtV3H6xYIPNTXylfrjre0mG9HbyQ4lg+E8z+mSnkW9B2nEnisn3rSAukNd3J6v4RAV9fFlGYlKXvkmBX11diygAXzDpW0KjJT/o9cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aH5X1bIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aH5X1bIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10FAC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744028393;
	bh=SqOJPXClUffw2XmGG6H7GcN8arkjmXE/hGjpbtUUAiQ=;
	h=To:Subject:From:Date:From;
	b=aH5X1bIGzo+Km0r20Aof0NMrdoS8DXeYEXUmfenWa6TXFCA8RKgu8dKl18tKtJFCj
	 Hc1DPGATv4LJgK1Cua7/zQ9NTIQofmo6n5sBZ1TLX5CKu3ez6CVJSiodNP3spKBxRl
	 TQiLehVr9Y8Q7+MDREfJVsymTzi5MHmX7CKA6rjPsydVyY7fpW2gqrYpnboixL2GsB
	 Zh0FzUxkOTYM9bRMJ/vUkD7ODWQ0PNBHouA8H9LoRRV9aB+5+Wpiege2cmGJ6mIAU/
	 fuYlO0ihphM/ou/X+EDTVN8U5o+HwWV3pVWCuW752g8TRcXRRHDJ0uOLSl3G/XmPeY
	 sRhOOfYP+y/bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEADC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402839364.27371.4363642466123861237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c5546cb16b3e4726decb8184611162175c59a4c865cc6a1c650f56a293fec57
Date: Mon, 07 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744028393
