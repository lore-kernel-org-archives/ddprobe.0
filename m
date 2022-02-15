Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC55158E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644943885;
	h=To:Subject:From:Message-Id:Date;
	bh=Jg5L+GM7AFxlHd6lrjR8rsdQGy0iTXFF7gI0SoYN6sg=;
	b=If0kSp8yG4NiGbkJhJFj4FV5hrD48umZptEp3MIw8TB88H4Cw71Iu9DK0NgkHkGo
	yjTtpv/9UVOJ9500a0pJubeX9kWdeRVTQx24lblpn5QWVbbfetOlTcxdLNBbwJUs2lb
	7BZWZGz1G3w/Vp0DdtP4ZTxaFYfhLHtHkR4MZZoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644943885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jg5L+GM7AFxlHd6lrjR8rsdQGy0iTXFF7gI0SoYN6sg=;
	b=VSH57kjKEV+9Z+6X8HkORr/K2sySfX4AW4DFmVkkCsRcxNoRuHO1ekVrpIZ968bS
	8l1Qr9cPM2XQE9JQ+WLvz+dBFHdVSq6vKfRsRqH9kytbbLz5k8Poj1VrALBw0nBjkPy
	Sy8z5euvTBOIRfA19fvWtQekPKaJFoIHqec1TISI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efe4bc200-c66638b1-ae31-4b03-94e1-4a87c3b56b09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bb6e0a93c4d8f04019ec3ec35f9d9f491f043d80ea5eefc7aae62fbebf4f58b
Date: Tue, 15 Feb 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644943884
