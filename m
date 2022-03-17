Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8DF44A84
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647543385;
	h=To:Subject:From:Message-Id:Date;
	bh=QofrjXGXyQ7hQmHwZde1GAJqtxZmBH/O4kkLzq5w4DQ=;
	b=KPEY4b+rGRgpJoPHi/s1XcOkbVkNdV3Nzc+cPYix2ZnRBUH28UxgGmxaFLz2AtDj
	4NJvy96pYH7U/wIDuuws/6MbqCu4MZvbvCMLNeT1QBm10wjjeKwhwJZjhQ53kDdu1EZ
	cHNdXjPTU+QF1CFuJAEzfMAnPi5ulWF5orkDaSQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647543385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QofrjXGXyQ7hQmHwZde1GAJqtxZmBH/O4kkLzq5w4DQ=;
	b=Zy8Bex3EENyElwIckj/K1/UWq/Hgsv3k0/OwhNRr9irM40gZ2/PER65qPm/7ftcs
	lLFBEYDv5loNE01HWJyX6OV1Pz6HgIvNZWqG7Y5qgkVcS5+6tsYYdLci9ajDJcGuJ9h
	pwMlcRDMa7qkIFzMHZ6kAzBj2xMUrKMmwfRpFJhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f993cfb1d-f5a0985c-1c8b-4e3d-96e0-599039b1357f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d83f1148c1fafbb5f8ede02889a1167e8844723a6c462fcbe1cfd74a2b32363
Date: Thu, 17 Mar 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647543384
