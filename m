Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA1E210A
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 07:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA8CC433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 07:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693466048;
	bh=S66XohIA+3XmBO6CIVxL5D8pk7QL0SewiKEQdejzUJU=;
	h=To:Subject:From:Date:From;
	b=XeU7roDsp3IKfIONgtC9n3tcr/wPdXmO43sYbRkJe3RUWp081WJzoxP9uDT++8ZpW
	 OsX/1uAxDX71Gn0uJ4Jnexo1U5pe50vELeCP/hVrVvEZY/YCOC1wJpx0v2yUaU1yic
	 9j5V+jJpTzpSb946cVM+9OEdyBmrTXK/BsoXduvduqICHwwK1Z9eBxuOBC/qGVPcIy
	 VEuMIKmDTsuBJZf+l4L13krfnWu9RfyBl5p2GWRDWiFkgpfE7E40BaEDrRSBMna3Lt
	 slQ2d2CRNVyySKxS53f9WAXxwtJJekAzoDNiyYrz/p5dWiuTdmS2ueZ6Yh9EAmiCpP
	 aqt2njPYhpzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA01C83F2B
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 07:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169346604869.13742.7426405826408059999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1273e0fcfb1b5f429a999bf927bac3730918f23440d9b6801fb50ca91420f7
Date: Thu, 31 Aug 2023 07:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693466048
