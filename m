Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0842D1FC4
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 06:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652164739;
	h=To:Subject:From:Message-Id:Date;
	bh=Ms43V4L1q99uZ8R6vMZ1dCwHfoz1hnOcFx8oBSre9Uw=;
	b=CVMWatQddCHsbv/nXv9jj5p4E3N2dpXg3ji/uj4/RFWLJCJPc8B5LFdgHs7wRFbo
	dBTfC+IfyZGyBw3dnPhdSZL3PtL1oeRrlELu0xk18GUdoadoX38vsnN/SeSjlRWATo0
	Hpjk405rXPfTwmZmEXJlzLqAwSkS+soHx/+nPZRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652164739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ms43V4L1q99uZ8R6vMZ1dCwHfoz1hnOcFx8oBSre9Uw=;
	b=RFMLbhLuW4CbkyBMjGcEJ2U8T7KO9UIjuGQSVTu9L7P9w8XHQr59dWZhpLB+63g6
	3uzW6KdXH0KOp5fnI0pveHXf4itEsg7LDcwnIl3vNAGpdjmHGx4YqY75KSOzm3VmL/5
	g5hSUzekLwx5FEJcEj8M57MnbFXBb13xVyLAlw8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180acb140f3-ead9459f-d0c9-48ed-8e16-4e10f6140a74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bc4d32e8ce69ebf1765bf78da9d2a328468055fcdb8f683dac3fcaea9014762
Date: Tue, 10 May 2022 06:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652164739
