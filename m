Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3AE35E94F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779130834; cv=none; b=L5B2Xu2/CWaHv4/lOjmFEUCWgfKhn8ad67Lg5PY31M/PqEac1u0Bhw5+R2dLHSJvO8l79IuvBLVehh4fVknlBOXcybPj0oFUvdXrKq0AkFAd7HNLHgajmlbYOBcmXFsNy76qyI4eVyCpvyueOFZe/23U5HJ1bJOuKaqoO/ju16I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779130834; c=relaxed/simple;
	bh=zCPjVx8m35TFbcP7yivyjFAZ+kLPEzZxYq+WD8+nkK8=;
	h=To:Subject:From:Message-Id:Date; b=FNDIE5Rr/+8/ghJRo3t7DkZ9Pt6b+RaaebYQDTxpiqC+DvVwIybuxWQOkeKoy7/sonrQIFGoob355f5fQcOLCOOy2rWNwLf/e6Xwx6YzhbYmhfB3GdfHm+p4DLfF4h949NVcw1r/q3hBQftilUyMS71w5q0jvlKBgo7MIAJhw4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdQ5y9e2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdQ5y9e2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7563C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779130833;
	bh=zCPjVx8m35TFbcP7yivyjFAZ+kLPEzZxYq+WD8+nkK8=;
	h=To:Subject:From:Date:From;
	b=LdQ5y9e2x03HOp3sGLIIXOiJ+HCu6/zU4K5jB23+Zxtak0mt6WjAt8+2ndU6YSp4P
	 TcoTdNk6ZTlKY2V0+tjVz3ri42jlKRf99nWtSbPvn6YCK1P3DZ58V0LOVeIKAAw7cO
	 jYDWQ1V64ypQ/j21k9ZrRQtlAzONWkhzqA4R2/XVp8W6goLgJwfw4RZvDcomI3h2pC
	 xC8nAxYbPKnszdBe+X/7MSpWX42qTQMlyMOyK88+xri+orRyes3DMr3aYDktc0IL8k
	 Z5tec9IqbujU3OIsU6hXp76WuNXB18eKux+RScT5HL7lsFvbPORzYcqsZzcWQe5CHx
	 oQ8+VeU1xGHKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA968CD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913083368.22019.12600232270063251250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d40bc8f57b0706e87d7b88e11ece2bd0eacd55f380b1a490e6e6800cc239c8be
Date: Mon, 18 May 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779130833
