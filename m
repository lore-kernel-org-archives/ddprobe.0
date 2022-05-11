Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470592F43
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 15:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652282819;
	h=To:Subject:From:Message-Id:Date;
	bh=Qr+6VdZeQInrtEsPoALZTg5mHbAOeANA9a6pOLyu/Xo=;
	b=e0/D34OTHVDqKm1cXhkBjzpoqceBoNk7J7Mc6R3HOZHcnd+WESxGNPqCikw3Vkw5
	ezov58VRXzkL2nx6ovsOm2Yotc17g/bV8uwGYzezOQ4PQgOYxiRvUsFdqAR8XzptPLI
	2nj0MNy5Pr3ZVGCzqhO4NZ/8ebQEAFwG7afzqOR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652282819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qr+6VdZeQInrtEsPoALZTg5mHbAOeANA9a6pOLyu/Xo=;
	b=NV9D9ndb/R1e/WqFVV2qk1P+G+FW0sFoTiJvOiL4VqdtElWGD4H8Siy4ye4/0qOz
	oFjmGBinmxfMmsfplmE9Lw4uzua+dU6WXBJ2AbNsAkBDnRZ6q4Ts2GcSrrLV2hjv3lE
	JQf5ymI/BkaU9gT1hB96Ii2FUDCT/XvcDOEVvn+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b3bb02bc-9adfe15b-9b39-43d4-8c24-603589c31252-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0f27f87aedbc73b1efd46119588d848eeea93c8456a078c6558c7517bebeae3
Date: Wed, 11 May 2022 15:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652282819
