Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE197E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 04:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653108419;
	h=To:Subject:From:Message-Id:Date;
	bh=+hxx1pC55NZ2xAilWic46ytGmrkIMIwBXk25CdC06dU=;
	b=JTrLQvNO5mQa1v7FPG6WhEYs10kzjw94WgfVD0KXtPXZIp8Pq2V6y8eIdQamL6kk
	ERxgm5O5MWOejg6b3Al2cUztfJpVEW+KGT5VGi/rZO1xUaA/NkcQBlSZ/3TmhUBa6cT
	6loR+NnX7+QYVFkCQX2zwZvsfwbMP/95+ZHWFJnw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653108419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+hxx1pC55NZ2xAilWic46ytGmrkIMIwBXk25CdC06dU=;
	b=XyZsUFk4oZOvqpDUba3ORSFgS48klqTf/STRevF0chmOwIPiVE636iu4NsPFMBf8
	1Yq9qRRt6twydjPD+9fKKVm+JsS5rpDYwAjpAkkYh0FnvhjuDhuo3GaL2boXCR2UoLl
	aBqrpwvHeiSP8dkA3JRAWr50pLvdqC9RTU0LjMuQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e4f0ab0a-d384d482-9458-4b80-a96e-cd40212d19cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6dc30987064965c0d71d822bccf0fb1b211c512de132daf5046dcb3e8ea0364
Date: Sat, 21 May 2022 04:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653108419
