Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E997F2907
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 938A2C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674045087;
	bh=d766ti/Dga5rBlqeYZo9A5FKZDVTGYLtNDz65tPrrtk=;
	h=To:Subject:From:Date:From;
	b=VNpy/BaFHlhNkaadiG8fupQQ0AwG0DdgyF2Ib6atFX4sRE2cu/9lqImGg6euATg03
	 YwnLHaOFBaChH4lZyPYqEnOr02bH8EwTy+VxaC4kM15aS3FZPQD6JoxyDFrbnsVBG5
	 KqE/DrRzfl7b8HLE+84MSXA4PqCVD067TxkfRDySGJt9EaFZPy2BfbPIrMWv751tqN
	 gngixAqG+KxXkQ5Ng8CRM9MwYcxOefrA3b0af5i/sLRV2XWGvrT4VkA/Nia6Jwkx6f
	 aAqbnlil6l3o9GpTOqcCs1tcQ0BBsl0ZTzbmMZzjM+VfdrR9mD1bxY7DaYKZx2WckE
	 tp1uiDbnSLn9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F408C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167404508744.27315.4215701033816641389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e96fee98b9e68ef56d7abd50a51dd09363b5b8f2a5ac1ce360df2911f07942
Date: Wed, 18 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674045087
