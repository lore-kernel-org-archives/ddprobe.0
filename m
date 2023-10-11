Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529806104
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZ1vTS8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3610C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696991228;
	bh=XkmWQoBtRabYWmCSZ04Pca03OwdlCvXrx5f4viOWvNY=;
	h=To:Subject:From:Date:From;
	b=pZ1vTS8KQL4pCuR9s2RoM5JMpWBnpYC1Va7G/iFRt5yp25wZsJafE52LN31m8XWiU
	 zj9kODlq32V26410rt+EsB5uDetHs8qBIp3G8VstCejvb5IdpEimWe3dZOob6B2rQi
	 TXEjuq3ksi/eFeCe4hwRFq3HrxnQbNzILHTrk/JSSkj7b9YSoTpziy7LiWTWjrZm7Q
	 evnoAxy1HgSsbOjpmNn2UCbYGn4CFPE/p2FQmHg3y3qwb1M4dmrKwtenRwHnUYxJ1t
	 TrHQjGaiKhYP4tNwQipDw/9S1GRcbY9X5dBz8Zo6fO2LOv+Y2nqGfWlIXTvEUS2797
	 kwStw5vlPI5LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA909CD98E7
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169699122867.8361.16269352120068572577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2674357bf3c98e1fec5e17d0f8c9b543430aa4140a4dd7e470c44a7b17358c66
Date: Wed, 11 Oct 2023 02:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696991228
