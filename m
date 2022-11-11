Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEB52F2B
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EAAC433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668186654;
	bh=5dHM1BZU+Y8iSQZ1duD8bGrE8RKLBbSdsvrMWSOmaio=;
	h=To:Subject:From:Date:From;
	b=Ax7LXktISNXDb8AmsFEANbBNxq/+mf521ZCTe+V3zL+ieu3VqSOkUibUZ2zLN4B2d
	 EzE8KLjeUIjn1pDYjSVgWW1H0lrspkBMLvr26dt/QrGjevt1Lgh8fyq2qvszxsAYcE
	 t8bq22mfBpLlCVDsRj3kDGkKNONyDZQMmC2VjCGih1yyr80vZdEbxp23bgOYWbe05f
	 qT7XmYHdoyQS/Qh+z6wTCN+OJAZpR0wgmWxa4IYpMYskqTZ4L4mpphCsEghdWz0Vcf
	 igU2Nu58Z5GIG1ie+0rUF4B7Frnwzwh5Eqj+hA2hVz5iNUmg/ziqkt2AkA7PL5gm9z
	 8/ltwtHCweSQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58605C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166818665434.24568.16134543927297545604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab40e08c98fc980064534087f5c9e697afe6f3aaca0569921505cf387555037
Date: Fri, 11 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668186654
