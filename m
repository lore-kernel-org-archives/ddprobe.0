Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4C92F5B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656341212;
	h=To:Subject:From:Message-Id:Date;
	bh=2nYHEO1oG+XenRGy3t0w1XzwpvN3n8zs46rRZiHb1+U=;
	b=jX8l8ePlEP9YcsCEV3yvyAttCM05+0V937+uV3p0iz4RN2FvXOVbA+7CvViJtJ2t
	TGDiuDXhiBOOg64ky7cnfJPhwwnM7vYvSCKOeFzYaUlun53v73sFYcjbNQlsCRT2sCd
	OA1ey97ybd3gG4ywhf7RSIt8Hans9hq1WTjwni7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656341212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2nYHEO1oG+XenRGy3t0w1XzwpvN3n8zs46rRZiHb1+U=;
	b=Rfef+deQECWhKMcoHjkP0ZovBrX0Ki+dBySr07cmv8HZ/UsDKZDRhaMA+NS0Lmf3
	PeHGGBxQ3FJiAsp6GIBau25v4V/l09MbuUdxV8gSUrAXcjibBb5gtXES/m1F2TMDuho
	iLGNRX6ka5ClL6fz2kVad2UrOnO1uIg7QRwUe21w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5a12c75-726d896c-4a83-4583-82ef-d249dba7d595-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75f67cd4a6b85eee416665ee3fedaed3f79c14fd2a2f769f0a826522d0f9920e
Date: Mon, 27 Jun 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656341212
