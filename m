Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C1234D90D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780298674; cv=none; b=ZZSQ4rV9myi9VEdTySGd5bevzcsPBStm/aJkLQ2ShKokwvvY9Ltxb41pvw8h4JR/zfUgkFkjHCqC+z40pEONBEoW1v5ptGGz+6YDiDcIFbDI5jPjv/JA7m0mKttGoIwTDrfAi+CGCWGG5t8B1rfG81EZQ3Ij1H1ZmfiBxuMyXCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780298674; c=relaxed/simple;
	bh=Jzni+n5QvYaaJU8IXdWQpDHZVJJwo7VHrEoG1Xnc2M8=;
	h=To:Subject:From:Message-Id:Date; b=qXE3PctczF/goQaeMiiafnUMa9K3dw+Ie9iCtDzD8DQAGIroIOBBdXtlredMW5O32CXH8thCGZM9Jm2BIBWObDjySlHJCayFLHJmvuzBSouV5qa581JAtDMSa/zs6CkXBovWyTFn1cgNdmTHH4qek5MjOx09uv6AxwCSpsd1Xu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hk2x9aYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hk2x9aYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D8CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780298673;
	bh=Jzni+n5QvYaaJU8IXdWQpDHZVJJwo7VHrEoG1Xnc2M8=;
	h=To:Subject:From:Date:From;
	b=hk2x9aYJpm8s7bhmIu/DMsfHX/V/CtW4m/6kRe9ob6WpLT8IGk1w905HaIFBrp2Bk
	 z1a8Ud+vPjGXe+hvCmhlt3bqngh3HHMG85z79hdjaYlE0E2w2dxaD4hvYmgwqvXhQa
	 3YeCUF+9xm9XuI6nVe6uvVR8BLfhmtnQ3sQ/I2klIp1QvAu3mTo17sfxpjKRFrwChV
	 3ZEGa5D4AjZGgz7N+CUBjCViQfolJkmxG2BVgljuqsaUNyzREb2vDoZ8ulKFYvaDt5
	 8YoifoZVFJ+IHutED/XMYNJCTe/Xjxm/f770NJ6Y/WlLMJxw1ipt0tWseUe+qYZ5MO
	 VMBgAqJj1RfAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA3DCD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029867369.27747.3213716967914251969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e768a2ca7ce3aca04aae18ab5516879f18110458000ae351275453ec3009fedd
Date: Mon, 01 Jun 2026 07:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780298673
