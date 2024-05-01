Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C301649CF
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714596743; cv=none; b=QiG3vt2sKbnSCHu2qtoy/Dj5ysTkZHsBoguRi7MIamRt1eCTipOvqlHZr6gxJLthblVzrg4Eb3QabWl0QANo3JuWUa5loHjuvKHgHnUj1PQ7goaXFzg19I3rX1/xD6i9ftCAW1q1Lr54+iLgyXKkWKLl8AyDHb/X4qCZ4JIIDk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714596743; c=relaxed/simple;
	bh=P0uE8Jcc/r0bsX5sNiNk6wRewLxVGpcw14Hl1Yc0BAc=;
	h=To:Subject:From:Message-Id:Date; b=nby9q7CKg/FSS+kw3OQlHC1FhOw4xnAG2KbVq4C1xl9chFibZbZaPvLTNVMWpdocfhU1j1pbMAhfqNtrxOcU5ecldhMDn/Y7UoY9TtIZLYNO35oEp9/sUNGu2GPMKIO2gxMI5jzOO7bJi3OEpzCOVmxYJQoo/yLiJp84k+Kg4UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqXLwyAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqXLwyAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C1AC072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714596742;
	bh=P0uE8Jcc/r0bsX5sNiNk6wRewLxVGpcw14Hl1Yc0BAc=;
	h=To:Subject:From:Date:From;
	b=QqXLwyAcT/0SUorpb/ql5am3liWXwkM6GazT9Ve8ap63Vc3K1xX1U4n4f/YlYoQRo
	 ACBjj9njmblRb0ROs+jKQV22wUMnWhm4eCOD1WjHMT67Z0a/A/JhHzCKmlIYxyPXB3
	 SrE1+dV2fAHrdpVMdQa4AMovo9neDC7NiG/k1B3IEtjkq/Zv81YQSxQpgS2nCNuCOK
	 kL6qncgZUXeyCx+cDsxL0JeupUF53yL21UhOZyIScQ3KOPFJ7t6U4mPF9PATrC1kgH
	 T1KEsCvqt0l+UMMwwXnyWeKEz9KuPcGcyDkChQfXoRuGlpkWirOlbRko3GnBlaT9JK
	 9+5llNnKsmdLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C460DC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171459674279.9860.957323259791063548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96d0afc30b181df561ee491fb5a9f1c828ffc23038a102f8ae0f28ac8244b94
Date: Wed, 01 May 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714596742
