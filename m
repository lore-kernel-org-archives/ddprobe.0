Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FA140682E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784918434; cv=none; b=k+tsb1KpCwBoCq8HVfCkI+oH+4SmLtxdYnLxlGCW3a9ZndTYan/Nm7ku+tP2OabfOy1/d1ciYoBSW1Zj+5KnkSGt5y36nAt+IGWm+v/ib+ATkhe6EgCSKGcAx03w/IMKYgGNUkxEHm+6XWYXkzRHbrr+5kNOUJK4HTnZjBXHi1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784918434; c=relaxed/simple;
	bh=AIoXpWEvn0Gp9lIXfM5jRMXUOw94tJGFJaMK6WVvXNE=;
	h=To:Subject:From:Message-Id:Date; b=gPHEHt0ckO2X59u3Tf6eQNjeK4kL3N3s/9rLAMjZ5HVMNh9aO8IhdHJD/poSgCwLgtdlyn8kmPDswNzcvioHooz3JMrf08OiHJ1EyW7jFUqk6DZOF+yc1B8y0CSyT/DQm3CGPl4Oy7be6YKDR1UWfAwsSi4gh7yFWt3Y3+hND3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBqRIkR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBqRIkR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD94DC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784918433;
	bh=AIoXpWEvn0Gp9lIXfM5jRMXUOw94tJGFJaMK6WVvXNE=;
	h=To:Subject:From:Date:From;
	b=fBqRIkR7+lqQEnMnI66KhdhUAnEmVmVyHcz4znHV9sRbRu+nh2ooKdpGOgAFeUWaf
	 mYvs6MuZ4Bdxt0ogPlIWZquDCzRarFvZxqpwBpR/kRg83ST91C+kyyC/0+y+p0giNC
	 3YMiBKNYYyUD3FL9XNHGTYXCF4Srfy+B4SGYo9gfEowIRwDly4rXSLL1fTb1Kp+CVL
	 s9bFbVDW/h5h0dLyB3WVUnMsX6g9sUsRXpNTDwIHABVaLwPlU7JaYkzXJdst74rXYu
	 RThF4Y7CZ+4ntqcr8w2Y3b0hrhHufpLjBJ/91kDJmnf2K/h3EVke0BLynmoePieXIV
	 C9lU1J5eD6OEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9765C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491843368.28962.14172820428063809247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7002f9be9e43a1cacbe0de0ae3cdeb4e737f2871e2445dec9c0183ab207d9814
Date: Fri, 24 Jul 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784918433
