Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0FF3D81
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745380794; cv=none; b=Ol73P8v8jIIfRNxC3kJy1WW4B1EkB8L+p3raE98z+qdz5nKvXA0/3UhBsWlmVCo31NzQT0J/ty/GUGPnYLLlTJcNKjL/2UQxBOt1w1yL0aT1Uh73ozasvpzvv9Ii77WY6bAiR0pjukp0vtkdaHxnqPAKaUaQEE5rNJi1VadFEPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745380794; c=relaxed/simple;
	bh=eJjqyMXXdBfTMVUMvfnLy75lVMYetIv7KM4HmheOkx8=;
	h=To:Subject:From:Message-Id:Date; b=Mr8HPiunL7GwxhApx0EAmPbl4DxHH74zjcTswHqZIiUae7UtkTrSzaLZa2VcDpwkyIbTNYvDQPfSHCs32OFUwJOSNNMnG3CHrSN7vFt6z3ILe0TQAbX5x1aEcuO84/8VSmBssaWjHGMASnv2aJwt31kWBWqPwIPztLeifAUYut4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diyr4ylJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diyr4ylJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C2AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745380793;
	bh=eJjqyMXXdBfTMVUMvfnLy75lVMYetIv7KM4HmheOkx8=;
	h=To:Subject:From:Date:From;
	b=diyr4ylJn8tpbZjeoNwAZSuCJ0ImYY7L+J0a6m4AzMxDLW0u0tNrsvqocDAmoV6sH
	 vYNZ73Vo3xsu9n4/km1s2wN6354SOKCVWT4NnrdG348YtkmbTsYvTmhXXFGmjXylBH
	 zC7Pcn1VHi5xtRLlaaLOdazkofhZV7FgJFJjmBDuoHsT9vPVeKa32xtFy/5OtECP6A
	 z28RLPW8sb4utGePF2uzdhmTgcyLnxwTXBtzDl+2ewM/e/HxdShsv/CkVoNLemHaE4
	 P1WMmxnSNhaqCvaW0f8ZaxnwJ8tsMdOW6vFN5XNkRD4H1wYAh2I+YaCMR3Cd4BD7zH
	 KSSnsoCVGuoLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E6DC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538079357.17242.5292807211422709580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a066c910b18ddb4ae56a1ce10ad486e352b2c79c6334d68359022f32cf711bc7
Date: Wed, 23 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745380793
