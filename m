Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DBE185A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 22:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650495058;
	h=To:Subject:From:Message-Id:Date;
	bh=sEJJr2ea+FBiGFozqVA254S4sI9lLPi0OTQ2XmQ8GGo=;
	b=MvzKYAuEhHKQSqKDuCy5M2qCUzNf1uX5oxOX3X1eW9H9K1p91QDJC9EwzPLlGONq
	fK0WO0YlA0oRiOVBxI0vzH15AkE6Lq5O7KkWnc3I8vjEzbB/k+HnbhR3Zg+Q4LToMSj
	HcwiedSJYtA5VRU6yRdhIpT4v08oV+EWTCyegHpo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650495058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sEJJr2ea+FBiGFozqVA254S4sI9lLPi0OTQ2XmQ8GGo=;
	b=Cseffu6i6mAmazcXBVj46ob5dmYn2bXgCA9HqFKQ/34lMQrYRFhU7SNX7wxdAh1H
	NuIp4SMLDcf4YOFDtSV77yw9DY+5zt2UrFZC/wz2cU73iMZ08BYfCHem+zo5Z6R9R02
	a/E5Y+kr+V93iK38ZFmwd5q6nx2ABcNEmCIYKGNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180492bf17f-dbbc47d3-b9f2-4b84-a6f3-a941417bc2d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb48216b898bd653eb2e59c1acb53c87fdc6d108a39d34f34cc51690d5900cd3
Date: Wed, 20 Apr 2022 22:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650495058
