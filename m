Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160647A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 03:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657856812;
	h=To:Subject:From:Message-Id:Date;
	bh=ZMJ5uM1hU9TTiO1eNA2a6QpG4h/l6SlztWmamxECzrU=;
	b=k8yU9G0IAUyc9OgnmgzDywX6B8mCNachlKGVbWejiKdu42+G4TNCiait50SDf+SJ
	FTQdWNCwZpofoV+ACgcw1a17rjyeH1Kp/JHH61nXdWKOJvuBU3RvEe36JbdQjvsqQFA
	pDtsx5GOrVsbFoZNerlo2HfU3VPuji8XzpJpOe1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657856812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZMJ5uM1hU9TTiO1eNA2a6QpG4h/l6SlztWmamxECzrU=;
	b=Ey8xIBKblFFT5nwbsx8JHwqYkIuo2NwPtAdIwD7yxslfsoWrPOQ5oQujnxM0OTSi
	/qXgFFZgKU4Urzq22Blia4n78AOzzsIPzqz8roRyHiGgGsGXTwoi8ygI+KuqZLQMOo7
	MSEtZ9yUyIb7msE5Z3Kcbluc1SHZdX2k+RGBjzT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fff7651a-2b34d59e-316f-4b2a-8fb9-cfc44708bf79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfc90519c4ca64cc7da0457523ba285ac7f4fb1f536ec2e24306f8a07171fce1
Date: Fri, 15 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657856812
