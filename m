Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DFC2AD2C
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729673754; cv=none; b=fszaK8UDDw5j4NY355lc0VC/IYToYq5GMYR4gzsUIm7P4uLQa2fR9hwZXdHqHDdrfcNcs37uhxUCo0ncUJQDFwu4CwZ0lTM2gA18rjfMbtQxOwOFqfAhE9MjOw5BJQpX8Jj9cnHXLg4dEyf2Gc08WE++lGQoOCyjdklW0Yntp9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729673754; c=relaxed/simple;
	bh=+XOhNSBXQw9AECygllSF6A8/r+EiPKg6c2bS3NzFHRw=;
	h=To:Subject:From:Message-Id:Date; b=HuidnYwbifurjv0Ialol/qccJXqgZgXcMhn73i6CSk7b9+H9NbZHylmNkWewjndWvbkR2UCWWwMIlEdyvGPPmxwM9uJfimTZPBHUlQU/Ktzho+FTFlJQIKDJnttXetD/zeTChMFSnGIhrYGLlLfj/XMu+4+PiUSoU8d2XeUdNOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTHa2GAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTHa2GAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE186C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729673753;
	bh=+XOhNSBXQw9AECygllSF6A8/r+EiPKg6c2bS3NzFHRw=;
	h=To:Subject:From:Date:From;
	b=JTHa2GAQBn3o1Q2o1wRDqUzDvZMemiTNAU8aqlpPYd46k1DD9OeDYLjEWnn46TgUQ
	 XuqgmpsQt9KT8uQZUQR838PFVGiGU3hJRI0VPzk4Iw38Td+9qIKpzJlhcXGk8kN37E
	 opCTWGUc11wjFRZxmkzdI5zPOAYZHQg+iBsI55NGjljQz7H5psUN1sZRVlGezDjwCC
	 nTgJqy6K3fXEcXeXQ75eAJcyHa7mQztraQf9Yj8OTYku6ImhyIfqsRLFWUDrIE+Pgs
	 Ekjadjfh9bDD9EoLG//9suRGvx3JkuW4AOzybZL178kzcwmjZTThy0J4xD2S5F2YR/
	 I2EvY3V6nrxRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A11D2E029
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172967375364.26066.388107881498044564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c4db58cb187be76a765ee0399019f5f439a0e47318d0ec5633afded6ae5839
Date: Wed, 23 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729673753
