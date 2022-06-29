Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51867B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 01:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656467813;
	h=To:Subject:From:Message-Id:Date;
	bh=MNxMMRyMZHg6svqVymSTb7ZCAcn0C634rFAPRDdGKVc=;
	b=corSlFtlr2jeXm+EcIG61LsPxYKFeZo9wPBWrvWLD1fRH8FDIxnp4e/xbLy9uP7B
	Jcn/JzpS99iAFm+ggDs6PdqXArewXHd6/zVDtu/72o6+QSICoT5OTkhFBEUaIFX9KG7
	6SpwfSusWzStrpcksQ+iFERUeRoL6b5xl5mBRBL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656467813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MNxMMRyMZHg6svqVymSTb7ZCAcn0C634rFAPRDdGKVc=;
	b=S7mgZsAurW98QoVoMAzOCQGQGinBNYfGVPntycxRt+EAbD4FYZCFmJXsVYJbbCMQ
	8wWQVs+YPEc0+mYtpPzUxC2+yzVJWKwm39UWs7uhYW6TtkRyCq2rxsvmHVLQHq/XnwS
	HbMeNrGtr0kY9m5FLN4Ro/VLP9ejnhX8G0i/ACfw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad2cf002-b1cc1797-42c9-4f5a-bece-c40b42f57eaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef40b3f198a12854cc1497a98f4fc166d084ec1100530d52e48baae13e989ced
Date: Wed, 29 Jun 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656467812
