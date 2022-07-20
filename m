Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B894405
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658319412;
	h=To:Subject:From:Message-Id:Date;
	bh=jj3DcLmixPZSXmL3QzEjmZEEIeXdiG8T6umZpjArUus=;
	b=P7w/heS2GTYOEcnbA0+SW66MRFZ8VEYgEkzVqpO4T0bEJGev2no7ZxrcDoAbjbc5
	UxmYJrn8eJgdfWnOxHHk/0Fu92p7gRauhQTfZgkmI67xccX9522KSB0TIEZQg+kjKRc
	ClVZWId3gVLiYQnpYPWWzyGTVKuM5hbJG2E5Imh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658319412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jj3DcLmixPZSXmL3QzEjmZEEIeXdiG8T6umZpjArUus=;
	b=Du0sZKmV8Eq995yXWSneLQXd8qSM9PT1fBT5+f18IHl9RqwDbuvbdGwNBNxIfcIC
	K9J84VwONsyRvg0WKOEiRtcv+jqKGPLFsGVl2VesltdveNPh8PclnPOMETWLDnx+H3g
	IoyX+QdvfaiZDG63/DKnBRowMfdjX186Ul6I2RYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b8a1c50-aeec1985-fc06-4173-9a67-12c0e3d51e92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca42acb8722003b662b6ee5a8f3c6a2156eb6ba33e61d69a67b5a6f4e1992719
Date: Wed, 20 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658319412
