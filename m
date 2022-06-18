Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E31D7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 11:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655552759;
	h=To:Subject:From:Message-Id:Date;
	bh=1HobPcIvfE+CNotHNrcuYUIluVcptJnZAeEXOSVHVdA=;
	b=E6jBven+MRLeeSZ8Rn/I10hNuGDr/ujVX0S02Jbe48bCcdu+lC5PL6XFjfJlL2Ai
	CkzZrYecJGq0NEbg5iRO5GsWMV3fNCUZFkuVTcz+9sgv2OX56JOKOG09OzClDdCvw4m
	9YXZz4J+0ZPQF2vLd9F34Oi8XnoX+GAN9v+7i+8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655552759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1HobPcIvfE+CNotHNrcuYUIluVcptJnZAeEXOSVHVdA=;
	b=TGNpapDU8sjmuSXfAoExXog+zCXsOdh0P/dlPKfLfzqfa7uEK1JJGie2aaRN7dUs
	0pyuSovNSFWB4W0oqnMSk57/8/nN6rQ9J/63CO3hZ+tv4hwbfh0uiA9JGepuqx1NUtE
	34z44ESoLYucjNE8ygf8xit+0yqG7E5TCv5yY3TY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176a255de-6d583bcf-7172-4aed-b07f-487b91b2fca2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b422d15e21c3a90ca14fee086b337bb8c4525610c79d0234c31a6823743bf9ad
Date: Sat, 18 Jun 2022 11:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655552759
