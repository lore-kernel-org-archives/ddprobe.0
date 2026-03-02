Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F371175A61
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772427894; cv=none; b=K8R4EdXwpnYpIQDxbVA3XJEtvt3Sea3S5E1b0IuvVeZUhkIFJ5n9uxQ4wFGdhdretD7E/kyBKoTEUZ98tUIehmIaMSrXjEKXjxoQWAK0Gt5fPyR2t8ALxz3M2Od30IQqFd8Y+cz6E7kv8QChYlffXiUv9HWvLBolDdTdPy4g9Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772427894; c=relaxed/simple;
	bh=zA0uXpjI49pSwBgDJzP3L6zEmsurKQlw3kps2PxZZQY=;
	h=To:Subject:From:Message-Id:Date; b=k/yMYCf8NNvnDBrrCXvWFn6yf6vo2BANUhboRPE6Pbibvv2MSbthwEmNBDqpsuqR0YjbcA+wOiNSFlw0/0Ao5YCQHdeZPLmdnKvv83KNp6FCslFWddezUyeOOUNHD0HiRRkad/CF9oeS02xzNLd9hXh85xe/0IfzvRTg30I6XbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrcyN7p8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrcyN7p8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C3FC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772427893;
	bh=zA0uXpjI49pSwBgDJzP3L6zEmsurKQlw3kps2PxZZQY=;
	h=To:Subject:From:Date:From;
	b=qrcyN7p8eVQ8TWonGxMispMvwuGSarVf6FkurXQyV0xr8zi1RY/wq0S7FLMq5KsqS
	 Supz+iGQeP8Hrj8i0aQuzGE+xnMLzBDOSQKkq4PSopl/h6y3TPQQTxugrsiet4QTFM
	 MCX2yeyWUNzZAkcshbPnPCfMBilpZ+QrV8FK1qF4tx+i/FmEOBcJuh7MMZLEsbYiDk
	 Ue77IqJ47F2PYy3O4ppIaDnhKnvgnJu/v9P2z8/LDFctxt7aqhmsrLZzQRONLwM9q0
	 E8aILSZPPUbXFCgdV5DovbAjnLIiYRooUvBFhhUH7CRweuRE8hF44/gAYisNNUH2JI
	 BFQYC+pQoDFzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CECD58E47
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242789362.20699.8580271863812562229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3469883c8b86b3f11bd3d963c423b69f1bb00369ca386ee30bbeee147c011f21
Date: Mon, 02 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772427893
