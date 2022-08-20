Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0AE33EB
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661030452;
	h=To:Subject:From:Message-Id:Date;
	bh=y9ckXq2kio4kP8GVp+mrh05nn5033AGXIN6PhUTOils=;
	b=jVOZQQvmyMcBBdiRHCMcCwWComisaD3c1XuGD6q3OcaSca2iV8hWQEB5D41S+2P9
	lo8lE7FoyMO4j4wHr+XIltdxLigeoiyK+3QRvKxVKVI3FHSAsGPCigQCeGWT61foRD6
	SFu2HfbqtdUQKwW1E1aRGPBERbjMTwdC8gFffSm0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661030452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y9ckXq2kio4kP8GVp+mrh05nn5033AGXIN6PhUTOils=;
	b=Bta7JmrU4AtwB2QcAQIFcnmoNxgJ/yE9Zm/ixVAJFuxa/qURQk/dwB0Q5bCqpENO
	k7KoylQX223XCcUolVzp9OseAPHQhP19zee9PW+z96fcKhvOCVoSvDyMXgPO4Nfnkef
	RBbKUCxW4XDzOndeLaShzpM4gkCnQG7mIFpP1dqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd214d66-fe6cda94-8253-4c6e-b366-39a04255c835-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5c43a85389c6671020fcffdf0b622b81774ed8de416d91d38afafe07b062c67
Date: Sat, 20 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661030452
