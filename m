Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E751852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 04:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651294558;
	h=To:Subject:From:Message-Id:Date;
	bh=DV5/+F59vsuCvgzfRj6hTN9MG7SDg/RNqqLDVaMf/Ds=;
	b=iINJ8nEWzv/UnDoC89NQD8Je3C/vN2EF8OlU8r5yexQTRa8CvUerS1kfiO5rFAKr
	mKTobNjWVvLTnFztA+8owHc6/tkA9fg/i/Q71IqVvZPw0vXGEvonrgVS4SMepLljqel
	y4zmqY9IH+J27ztJCc71jJjzI+M0GP7XMUgQ5GYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651294558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DV5/+F59vsuCvgzfRj6hTN9MG7SDg/RNqqLDVaMf/Ds=;
	b=hbrjeQ+USfe6UUnf0FW08XUXOFYk+MYmFR8hylRXSh8NGu+5gYRG2o0yqvw7gL+W
	GExESxNR2owdnu1IduSlWQYsm9OHINgvtKYEDocoRNdtZadRfckh+nT0MMnxnnMagB2
	pJRp+QPbeflJRuR+/zfO3n6iF2yHt6pQJuhn21Yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018078d35897-0c39572a-5e9d-4127-9027-265f00fd5f68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f46ea7f580aeab64e49b5d170c5e41d72ac692bbe93812423303cf55e062a9b5
Date: Sat, 30 Apr 2022 04:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651294558
