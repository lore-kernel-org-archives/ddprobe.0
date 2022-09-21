Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30C37C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A236C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663787453;
	bh=QjfmfDzLlvTr8Xr135VG9lA7Qaal5TFJn187WhxIj7g=;
	h=To:Subject:From:Date:From;
	b=WCjS7JFhYJseeuPFQ4doqxFmHQFEF0T42Pqygg/1hQJJgPKsIfsPEJ0O7aIPVv1/Z
	 VF6OZWYFYkdj1JApW47+QshkNUU6zNRSFT2uMipJuBofXVtWCwJAQU2C4HCjoi9jVq
	 7wiZJHHtUmNC9e+ozH9idWYETE/ZmumiPn/nbTRegraiVLoZzFM8IFctUJpMnxjaQq
	 PI0433SoTOakwVARSXxYontwcsQz8+RG4Fx2b3dIeaWgBZtKSVwqD0kPtvYXb7yeBa
	 dKJ1u4mizRzSmnWWUTclhcdSgzvyVUEkbGAoylY5xJKngOPcIJs+Q2woZxj5lVaclf
	 M5O/8N3mKIxrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A712C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378745335.12915.17219668687362513871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6489011325222c6409ce3c9c80d7c77a8eed6c21b10116cf29044e8a1a44cc
Date: Wed, 21 Sep 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663787453
