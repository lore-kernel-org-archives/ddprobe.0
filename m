Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF79ED2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647230185;
	h=To:Subject:From:Message-Id:Date;
	bh=fZK0SXIG011E+d8kVwVEVWmotQYYReyEN45MV0RvpE0=;
	b=ABkr2UKRK8ta4+Oml+VEd/cvf1ItLK/jyUC910uKQj1qQP7xgzmFzYXgQ5eCAXqi
	ff6gGlYuRkLjwXbE5WXvxgohIO0tkZA6qWkSYsCZj5TSt6k7D/hvhq93OoUCv9iBc0e
	W6k7eon0jJCy38EOP8XORDTqSy193d44JKjkr0L8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647230185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fZK0SXIG011E+d8kVwVEVWmotQYYReyEN45MV0RvpE0=;
	b=HdjETx6NTxHyMDmm8r+ZYWfcOSMqY51ZxLx3H1PJaJuGWwfA4hLyY8pz4xkMdLvW
	nnba1XnUentUtVqNftRfyb+1Ew6RN0NUTZwA3zBJt2ZVB5xO5Z7jxZh/OQqHgay9CXb
	sRIw+aIwhv2zUXBQMwLCfAekNrmNV7JdADtEDU6Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8691ed1d-31d4761b-48fc-4c3b-9e6e-f81cc691a503-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd24bc426e3abe7c551ebae8b9ae3fa4f0c6eceb66356959ae639f55c1b10fb4
Date: Mon, 14 Mar 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647230184
