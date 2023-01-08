Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8E31365
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92E66C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673175087;
	bh=4gKWz7u4cfummRJUk74MzkPO4ueDi9Tpb2WOAVtvvvQ=;
	h=To:Subject:From:Date:From;
	b=Y+EG6ky3N1V6jf8rI0LhngONfgDh6Ip428N2oCgBHjj/PCaGvhNHH2jLith2h5yn9
	 vNCBODV4VxfQX9cpbHbc/3n3SZtvJYCvn/fS3VkIjodJwOQLKpOIFyAKqoOpzyDfLP
	 tJ0acHS+UjFPeCSUx/ryIXMDVCWuZPJyQmxHt75uvYsSa4NNwFhXOTxaADsxZ9su3J
	 Yrfbk7oFXlOEf/8j5yDiiWv2CbslsC6nohFc4oJpGY4pNqTNlYWSTH7paO8Iq0bIE0
	 3QSGj1/Rb3vUtJSG9n7z8a4z1Yx9T7OGeM1CYrU0y845hk6exG55+NXAkobcHEoXO4
	 6kmEU2USu+1Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73F2BC54EBC
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167317508744.27673.6578944524008905303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3cf077ae364e6192ab99ea396c7741fa6532b4a0413bd11f73967521b25284
Date: Sun, 08 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673175087
