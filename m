Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4742F53
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657816612;
	h=To:Subject:From:Message-Id:Date;
	bh=n9OCR/tUtpUKpX9dqqh7wZgKSl61KqOA5uPdH/0gSvI=;
	b=ZhsF0wmPiFjjnI2IE0AvclrgMEqlMW0shhVyJCUUKutHUHZWV7Dwzu44UwU+Pb8u
	AQ9/X2FHonQ+S1vVRFU8wgnsmCwOx8LZ2o4c6Rx0wKc5nqiRND8hbzDhNENAfIpTk3a
	Cr98qf7yEcyRISsvY2LiGDhbZ4I1SFN9qIp94PvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657816612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n9OCR/tUtpUKpX9dqqh7wZgKSl61KqOA5uPdH/0gSvI=;
	b=gOswJCS5ne3s9m5Wv1Y1KJo/fDDH9vDidhMni8XV7kepGqjWYrGhEP0YKwVJMlXn
	wMYKYtL401/+SykKdNc+QBbSPIekpKRftkdGb6rnxVAXv/3VyIf/MN2wRiirOYbcQVm
	WN+/RTcAJJ6vE6fG1NEd6I7JwecaBXEq3f1xzFAA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd91fe1b-988efbdb-2065-4115-832b-4f182bf83b0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ba7bf95920f21dece655b3a6fa90d8aa14f0bad042522e15f879d8ffe2cfc7f
Date: Thu, 14 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657816612
