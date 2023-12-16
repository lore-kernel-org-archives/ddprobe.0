Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F193511705
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1F9kThh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7675DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702705096;
	bh=BYGu+JxgxmqaL7JSuApb/6nI/nmzZfyu7q3FGhCHjfE=;
	h=To:Subject:From:Date:From;
	b=B1F9kThh1DzD0xSwIeP64Q20dcawwqWHmGmrJOZY5qtFHs0UGANco0SwLHC17yAys
	 +N9stAY2M8bt3gqR7D8O32GDAPrYChbXnSZRsyhhJPsizhL/T6HvWlqidyl2BIsxdm
	 QUeWteOhgCqtJ6wtGmo68dVIvsyHVCWDL2dKVN4svICvPC4OQLHf+PYYjE4wOEFAyG
	 38jZJxviqrM1XstHdfe7K1oMwg66hf18G4EGu+oM5t8MWUcRg9i0MYvyhpNnwsAGil
	 N499e0YiCcnfG/CqzEH0X/yn36+timb8EAIavu013/GgvzhH/5CwkaBxWmPMCcFK8U
	 9V46ffkN52XGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9ABC4167B
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170270509638.3209.13464006117413728752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f799a3ed5d66c250ccc0e5428d3e9fe4ef876ed3d3cc24ba79c195a1cbe8b83b
Date: Sat, 16 Dec 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702705096
