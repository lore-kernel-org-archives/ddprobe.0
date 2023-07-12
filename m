Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7004E1F959
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 10:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC162C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 10:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689159548;
	bh=wPelZsd2cteHnFx2GU6A1WN12DkSxeRHhmi8osiZMsI=;
	h=To:Subject:From:Date:From;
	b=jwntOmBVI5kj0VKDyZMGKGWnGeQiy44OTqAQBs5aSs8PZmPPoGGaYaUCReBt/iqpo
	 RLIjEw5W7C4bhkyk8FL++6ptK5ztrvpN42BE6HgiYmi1roa2T0KiV9lLRaB5Y4stgC
	 iOPDZxnGignzh4N9Ut19wKYIAWcDniA2fbaRtVknhXIrbCi5xPLfwVjjsMmfVkWxkq
	 tgR3M29EL0SqOQM21Jj264QJR6QuIoejUn6lax+T+EWhmbD63VIT+TLweiw40b6AgJ
	 TGX33uf2aLa1TZuS1TwPT46+baAX170qqDSvbPJqKIru8MKUbFWDRQOqv5MQtOgQcf
	 YrZecrJbynkSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFF4EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 10:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168915954868.19757.6170201665655989153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c8fe45361e992308c667cd866b65f3dc1d3004a98e8cff87c9995f9766fdb1
Date: Wed, 12 Jul 2023 10:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689159548
