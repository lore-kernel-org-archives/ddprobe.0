Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41292F25
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 21:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652564279;
	h=To:Subject:From:Message-Id:Date;
	bh=0Jo2FmXdCUuXcG8DxeXs2xGFLwDF0Uw3Mkj7ERnjlvI=;
	b=eFrUt+dgBCQMn9Kg3ARa73rB/09X2pxiR15uiyBgeLubPcsxrX68i7j+8Sact1kj
	0XJhGotV337rLi+KfUyuUKNulUrngzaVXS6ajXanQNPgS8ktzVj3Vspqcc0GFQibdxu
	V99sbX7H786ZOrWrsS+IawowEcb/p10Vopz7XABA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652564279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Jo2FmXdCUuXcG8DxeXs2xGFLwDF0Uw3Mkj7ERnjlvI=;
	b=K5at0353cL/lPQglfXTIrEPHQiAvCO+bYrd55BNkfx0GXfwqc4gBoyJEdjQx7okL
	75b7FGVQD6AKa9xI8wh7zXz8K9SdexT+MnEgZX+yz06+MVBrHzBP7/HycJOqdIAlum3
	5mj3CSu3lcShBpjU3jhHTb+WcUEWDEjajxcHIVNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c481bfeb-9256e63e-8138-49ab-a99b-e96358830d6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 232a37364beae6fd65b7e045729eba3febfb4e35c2b7b64d92a2f52a56c1b575
Date: Sat, 14 May 2022 21:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652564279
