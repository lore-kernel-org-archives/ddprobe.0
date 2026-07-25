Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F68331A7B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785012034; cv=none; b=pYb9i8jh1j9bQKmB1DWbfRFkPqsnC4D1B8LAt5AShcXuXSdnuUyFSP4hH/UpB7xzwyxWMHkk6f6Z+VYoJqeJemVXbtwX7wxzgvkUR+sBUr6wsu9JJQlLeOkUnseqMrt4kZAhxBPEEuCPf5cQulyN+YOq6FmrtejQfQ/xZ0xlGJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785012034; c=relaxed/simple;
	bh=G+X/DzQFHAa4ztA673D4s0BVXRRMs9cdB9VPyAdtsoU=;
	h=To:Subject:From:Message-Id:Date; b=M8EN+9Dt7q0H1daxzlKt+/7rH39OFkQgKiW5wlTF55QNVtiZPLa7g5jL77CgZ2lZ4lQjouYVwSailGbYB73BF4mPP/oxkkVQq6pej22ho1Hu+qtL9jydFEcqx+bdGf63Z3EKkpiNfHzQDtC+vaf8zvY0wPKXZJkxaACnut8PwQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuKqnzM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuKqnzM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35E1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785012033;
	bh=G+X/DzQFHAa4ztA673D4s0BVXRRMs9cdB9VPyAdtsoU=;
	h=To:Subject:From:Date:From;
	b=iuKqnzM0KluIqfS5vc8k0RXDN6HFY99Gn3CFCNVMAPO6bqb3mGCFTyb2lFuKZ+3+Q
	 8Mp1hwkCcStRFkv+VaoW9TrsQ77wYWWRag1G5hVnga0xywM9w4UPfxtOzG2pt6tTQ1
	 JdHNqsULI1CMCpW6YllX+hqe7Bu5i5R4RzVy8GlCD94EsnGEZfSB6t9EHzG/B/01bt
	 Xtol7dAm8Qs/fsYynTEh3J6rmDx1JtR+BUAp1GnoyVQq8HqxRolg7TgbB/gVshjdjD
	 Zln33b5YvtteyYlqas1iM0Nhaz5iePDWQ+uQqwgw1VdPTHX7Udwrf04R8MrxAJtsku
	 Ag/4YBilr6U2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDB8C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501203368.27321.8906876451640620041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f095e1ed71eec252a9e420f7d7e453a504557b2511f8fdc1d63bcb55d7a1a7
Date: Sat, 25 Jul 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785012033
