Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C866200C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 20:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D862DC433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 20:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687465388;
	bh=mrI8GAUCPWroHfMVExMra5ohMclCT62TwCxao8bOJLM=;
	h=To:Subject:From:Date:From;
	b=ER8oHci7Zl38zRghhIIuvKhbAl6ES09TrQrkWBxLMJry13oYzBQYQ1yTsMIt6LSGT
	 RmruHjEimsmU0dY+nc9QdCtmhhGWAr8pPDSQAFXCuk9+O6Nf4WArAWsvLe/a1AYmq/
	 gmqTGfc4Xb35DZKP4QH5SMXfOiu/7SUNlVkKSb7hghHQnTmrnSdxIwFNGHSVAuHN57
	 G6GfHHRgHgaFcbJIoXZS2lW/14gW0GtXbLwfPsA5TtrS/Naj85PW7ayvqz7PemBSUf
	 paQLzPj/D35zmPEGNkRUVN0OGtyOyhmvK6Z3/ZXp2qVWvbsU3yXKTLN2njNpjwGTVj
	 msYq/0sc47rAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E10EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 20:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168746538872.16016.3939843191748686834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c882b592499a6f871e8e7c68afca18b01d65df1a10925c8b94f6614c6b9b2a48
Date: Thu, 22 Jun 2023 20:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687465388
