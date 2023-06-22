Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614041C05
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72C9C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687414388;
	bh=HAgM3VKkiIMZOdu2GIPHygKtBaNCRBEjFZBRaw59Dzk=;
	h=To:Subject:From:Date:From;
	b=I+lSr8+63YYDN6xs/NB1Q5taCL6Nht6LlSsox3Sfsuv/WjTL0XOXLBbi7NR/Kwmno
	 dET8y1GFK3HswdU9YLo8SNEsBvcgURalrS5ymaiOtU3d+1xgqCe6fjTJXS+c9XyBio
	 9y+7K86IRmSQSuVuV0OmcV6VJ6dkIQNZotLJVHklHHdY06szsvoZDWwh6VJBZaFca1
	 u8hZGYcY3L4CfI4wou4PCd6oqsS4z+8bsW+evjOEbKXXxxZ9E/BTeKkIvKdxXr3VTX
	 23pHFXiVkxuTgBEWZMnUlXnRiwdnWcz0V17sFqrewO1lEggKVnvaGrKOgjxRkE2fK1
	 b39ppd9s5A4jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6074EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168741438867.7662.9981881072063982999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c646d6f080a54d303c25387f3e5ec0b3ef09b64fe85f0c73f1d0ec7c372a0b
Date: Thu, 22 Jun 2023 06:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687414388
