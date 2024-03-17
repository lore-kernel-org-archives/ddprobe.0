Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E902933DF
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710692297; cv=none; b=M4ejO4qDXKJ6cYEDmhwtuHWaP0zUSR8F5OOGqNUDqHdt1NDRcHZ3oO4ozb2A37zC7zkn9f2xMXM/7Z/b9YTIjTbDXL4FRlu3+6E30gAMI3F1hmqKNijZUERCzUWa9wN46Ky34o8vXQgJnvNjbOqfCCMdXMcPWxk4hrJFQZbiZY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710692297; c=relaxed/simple;
	bh=7H8Ggfcl+iZYZgpTTItSSoeGhxQMKGFUSXBY2hqVIqg=;
	h=To:Subject:From:Message-Id:Date; b=dZrXotpsYk9PZydAWM14rXUbAIBN/SJ4Z0X8FkZn8YFKFKT2eGIvu3c2xkan49CK17VbyItt2EAvY1gSnlAaFQ+GnpPJHQgO/8AIECZofnK80lWrf9nJX/E3qA4Dyipv5wE9FMYLmO5YkzVTdR/aGGAgpSDEUJ/Z5CEE6RLVTSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMxkBiLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMxkBiLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761AAC433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710692296;
	bh=7H8Ggfcl+iZYZgpTTItSSoeGhxQMKGFUSXBY2hqVIqg=;
	h=To:Subject:From:Date:From;
	b=TMxkBiLSHEwCOiMUx/D9THqIFn1Kd6EqDKJt7NUuj7d7bzQDQtUE2oiY3WWJlv8Is
	 zQoAH3JRmzaUHIMFv/mybG9SZ6b5Brogl2CGvXpokbPn7AlIlLxXxIOrhFaGo2VBzF
	 etfRCpjrR9zA148s7rG+iLWV1GnmB8R1IrgoDp8zbXtlTi1CEsDnhdOj0n/MT9Mm2Y
	 q8s8jaLi/4rrIRZwCHOaBRzapztdR5QXvUe6jmon8nCvWWhBVIlLoQEECYa+rmPLPQ
	 OoS2qVxexBHhDe1exancQ3ygZUkkaKtbJdu7o1iz0W8No/zCMvn6GGPMwr1Wk7QGIu
	 LX3CK7WzcN1kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63800C54E67
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171069229638.21912.919089725142912298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4b9372df29459076385a9f9e25a9d0267023d97421d232f0144fa0b9542699
Date: Sun, 17 Mar 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710692296
