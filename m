Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F37638F9C
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743288594; cv=none; b=ORQ3vACqMM9CdcyKuXiNdyj4lzKFyz614AWLf763rS3KEOt+HDr3/ZfY/U0jttCnqH8ubwrMzLRt5dULCM/N7ha30Ao/N9k+HgkwNzmY8qZQ/eu+4fPCEzBi03ZOk7b/zYNA1qQZ5pb7FFo1p/jLn1ZmTfYXqIYfthIetnQ/JiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743288594; c=relaxed/simple;
	bh=UtTJlYMc/AiEpEjln2Gm+XRa5EJob7UWZdODZlANegk=;
	h=To:Subject:From:Message-Id:Date; b=Jqfcv+4cVJM150y7m+4kXvXJY9Vd/wuR/X5uH99jlmCe9JaePo0fM9DuUBkfcWLKNNmlhY/4wfNpYnfxD4KI+4anUK+3XNdLvxC1bfcdaZ4JvfdKFRHqTPoMWGN8QeRYE2vwG8bO9Sowb+zTpBBQoZZ4UdEISrTwMBuWJKsRDII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nc/xMgof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nc/xMgof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0099C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743288593;
	bh=UtTJlYMc/AiEpEjln2Gm+XRa5EJob7UWZdODZlANegk=;
	h=To:Subject:From:Date:From;
	b=Nc/xMgofWeUF5rFknZwpQneWApqlOq+quIds9E3D/UVbSS2DJJzKVk+KKhEHSZaIN
	 84CF99Fp0I2kfiwc2K60rHxZWTIWfmqmCDn72zZFAx4nMeIBZAYtQzuxF00IYye9fM
	 pfRkh13XxWh2PuwwCpsGBscxkOFDjJQsR6T325FHuZc8EJJ8IUEZYxrBCjNwHrM5VC
	 HzSayd0Y8IYLwRvs41RIw6BtaWtwXEf+Da1ws3GtzKNoKet6r3aDUWkmwEwmwiw4d+
	 g9SsF0Ybi9WZ60ND4SQykyQ0DmmsadTAkAgP+dXTFzaFzLyFP5+bLTV+TCB8p398Uq
	 euEvDIxtUT66A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4C2C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328859363.14777.5886242222785712514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39fad148bd71fef3d85f60991842cc7eeae5746cf37d8cfd301cb741371fc17
Date: Sat, 29 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743288593
