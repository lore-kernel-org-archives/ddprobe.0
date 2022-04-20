Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5A910F3
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 01:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650417538;
	h=To:Subject:From:Message-Id:Date;
	bh=qhl8aRHbHIk2+yGuRa4MU3+/AfV77UAZiBUfRWBTwME=;
	b=HQAxuRKbd4u9FKTaMEM7C6oMLPDvpzJZHcloFq8Ydypx2I+pVeIS5S24rtHAnC2V
	YAbF0zWfrBoJmA011m/7+tx4TqJvq3+yD177GM00iUAln8jB1Z2v0bOmRuLV3dJd78v
	pY1ufV5TZK+GkAIv/mF8pRJx9mR7V7gupLGi8Utg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650417538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qhl8aRHbHIk2+yGuRa4MU3+/AfV77UAZiBUfRWBTwME=;
	b=f6A9cT/I2po6qIJujQMWn9yKSLhu0HTagdT3Tu3o2tYdv4zD/uC44pBHBFmmZ0ut
	GtuoWsU2HA82/XQ69ULPWlGGBpQeaUmgyshiBXgFN4WjOq2r0gYkFSbwMOgtQVw/ZQd
	pWnQp5CISJ3puI+qToF0ugDYh4oD4arLfyReLOg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180448d1565-1e75139b-34c7-46f5-9115-914486f6c2ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc9de338bd5156013ae3886c097925ee8012f6865de9a892610a9adad13ffb35
Date: Wed, 20 Apr 2022 01:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650417538
