Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9382A471
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71789C433D7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667940054;
	bh=uKdFoTveW433waV7GJlMjmezFgsdJCJmNeERmynOCuU=;
	h=To:Subject:From:Date:From;
	b=YDq2iZInLJADje5lVepe9qhkjam7j/uXkkqMvmXbLRCxif3nkNtsvbTJkf6P5dSGe
	 8N4NRSgWAspQxss+nCG1QDFYfo2JWz2WkkIlMF852vEisQIoCUG7LBxoP3zbNbDkE3
	 tCWMD6AmshqlhedhmxEJQe/w0CZQhS+eRNO49LRQ8RmSyKmGlbuv6p2FKwdiSmCJM+
	 By98Q1zveuTcWeJhqoMWgUvTrtxdmSjWVIFYiKlZYGHJfu80FTW4edPVxaxzrz8Cvw
	 eubacp40kMMb6UhTTfNsYzvFEprZe5JTFBIU+OEoykokDBa6GNOVeS12AImhTP73FC
	 6GIC/SGIq46Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59052C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166794005435.18306.4859544367773448732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0379f341775da9d11d634e0fd783ab18dfd196a10ec42581ad2d0902b481175
Date: Tue, 08 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667940054
