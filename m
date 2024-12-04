Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABA14A1A
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733279754; cv=none; b=VQA+wacHpC9At5h7zfJ2JmLp7BlnunSZVk9bunhPx7DLFQ4WJsH9usArXKZbabitWQ2e7Rni9ADulg4N/d3y5pwcAlGnp9wNYT7PQw+J2YizvLoJYwbRP5Q0WRNAQiox2QRwramYsDDjY66DdZjCKKJ0i7+sQ40/6hwksp5+L+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733279754; c=relaxed/simple;
	bh=jSfgChCmkN6yZxvLIKs0Bb/WixhDGWV6EVt8uCtEx5w=;
	h=To:Subject:From:Message-Id:Date; b=cCHeTDuEz1jRuaOxMdtJ8Q9w/UcPniXErtHg6TjUGZ+0masUEKA6QdKaNcOCXtVlETrbwEWOKsb7EXloS12Mezt7yxOreTH/up9AOQsUn1Nv1WbjMMdP7FsTlZgKRFZS7lO7E9vePvHM+0AJ+CkM10NTXbj0rM2Zd4ZeuYXBxlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/LnmPPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/LnmPPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02D0C4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733279753;
	bh=jSfgChCmkN6yZxvLIKs0Bb/WixhDGWV6EVt8uCtEx5w=;
	h=To:Subject:From:Date:From;
	b=r/LnmPPujJd7o9aL0USZP6b2YjUwd3UivvfQUthMshsoClFaMgrN1ueOkH7WAULhU
	 8K7ejoqZsCuAwzFSwi9zCYzebZeVmhtD+jgjDcncAF7rQ4z2zVDx3b3XTjSUSwVngc
	 xBvYiX7XTjAX3F+nJRjIRQuq7iPMUdukAhaJ8Gxc9lgcXb0lQ5VBCQxdkJXikNI4Pl
	 XB8SbVIUYtYzAt1pPIGE99KTT0OetSY9LBYqT8LkK7cY44k9lfMQDTqSmV9kkwH940
	 PdiwrMSVTj5kKBChrYgaKkbvXi7/z2L5RurTJM57mwac1acI9qW3PIgrejNsnxSqXK
	 WsdGF80HQJmvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9999DE7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173327975362.17899.2126100298918034542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddf27a9756c11ea20f10192c4b2a18f060de925620118c3168564669abb654c
Date: Wed, 04 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733279753
