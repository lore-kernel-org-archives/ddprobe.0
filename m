Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B637B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 18:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658342812;
	h=To:Subject:From:Message-Id:Date;
	bh=RUIzmdXY+j9zf66Op1f0Bu6cMyT508cIBT0XAW3+TH0=;
	b=chb/qmm3UUxeOIxr7lm9Xb+T17EtjAHLQP/5uICDh7Rh/CIjWoM0LO5y9g06c1fl
	UHADRj6he/YJ20AzsOMwy4Vxr1HcY/Dk2iTPJ4rDrRubO/npg1HG4nbFtzH6DlHZPyJ
	S1zF++PoBYKYUE4VzVoPIdqvtTQxdaQbtpfHIvx8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658342812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RUIzmdXY+j9zf66Op1f0Bu6cMyT508cIBT0XAW3+TH0=;
	b=Oq+KhJ8ODNpqrWbnOG/Uo2IdbVFoZp04T1Scg0H2MC3oUtVU8RqPeIiZ9c8BwT37
	nhJjSJlJ67uJUW9vB3npGtC1qeMPxWOum1sv2Mo45Ijg8hKAGhSxhN7mrF9R0JVrp+v
	vxVL9ETeSxfhyvP08flqGDlpbh15YTyC59lCVLQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821cef2a75-168a87f0-749d-4422-be95-33bc953ba778-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dc01d39d4c88a025e0ce486081313b215e869182624d83a54e16ea358ea9fc3
Date: Wed, 20 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658342812
