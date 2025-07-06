Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FBC14A0A8
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751802594; cv=none; b=c1u/2Lo4TOvjCQRU2kWy662mUM9AjY8tbX1nuNx0SaPiNDpMXfp/mu4enQT+uEo4xzt3TISg735GlAhxDheKWakoMI/kzv7YPq3oAujfenaOBhbCDAutXb+rh6QUsKBR+umYJ9VNbiWBO+V/AmkTJhD5jBr+1CYDkbsNR9Lt218=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751802594; c=relaxed/simple;
	bh=+Hnb2YRJh+QZKgKtVLLdHynWx5c0bY9BxOhaRZZnvr8=;
	h=To:Subject:From:Message-Id:Date; b=DU4+yMUt+SZt0F/VeVCs5uiLJVP6uQi4U64Y5m/kORx1xEVEA3v5rY89QJHHBbOyiWGLit6QD48Il7JG3fuEkBNtLPCSCw4CeSm4Q5HuF7p5WViWSUdPXG6mZrAtMrhRic/php0uipLm0UH8li5zK/xChhh3ZFE4cnO8xZPvo7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFUybsIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFUybsIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEE9C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751802593;
	bh=+Hnb2YRJh+QZKgKtVLLdHynWx5c0bY9BxOhaRZZnvr8=;
	h=To:Subject:From:Date:From;
	b=JFUybsIwXKlrOLTs9Dt2P7BhDDyxvTC0TwGvG1jF0zlnRA5tNub8YYzsAUHImWIrT
	 3wwsnq74mZ8GpmZOKhllIEln/9vtMT/rGu7yQE4etADD6SwH8oVIZTalCXlC9m7vVk
	 omxrZSBIY8x2JeiV8fMUBs+KqNMO9ZdgzidOyRJOs79ceiCiH/Eb7IB8LRAHvtO60n
	 RU4qOnydk22fz/j/Zk3k/HWMrjc81my6Rw/1ZiBTiW/jM1K3UrebtOYa3aBupHpkR6
	 pMwoK0qNHoMOot0yYPslTSaQ4xEeg0xk4qVMp6CYUpu+wJjXqOk5IwEu7nCvj7KEsT
	 FH7SxdDh4WUeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A3C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180259357.21210.16909169041684791954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8debe7e686b9708d48fdb0195413dfa50aba4edb29467b2be03bcecea812950
Date: Sun, 06 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751802593
