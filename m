Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB947B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 01:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647827785;
	h=To:Subject:From:Message-Id:Date;
	bh=w5i7H8+jJxjvis4CwkSxiwhnzOmZyEgvVS9QOABOjfk=;
	b=CN9dlPQus6z4D03IKhsD4Yx+x8AvYO5utZ4j+3PAcOrd99NyZ66Vsour3v+N7y0V
	/sQFemjdvoKoZ/LirTOhmh2vX9wqaKHADNRLJJoXSl83yJ18Cwb/z9v93dCdDsAXHVE
	JoFt/P3RWcYH498sSddIbasWFDPfxXTdoMWE4zHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647827785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w5i7H8+jJxjvis4CwkSxiwhnzOmZyEgvVS9QOABOjfk=;
	b=fackFv1+qP7uoDXje3jqPQ0JD7xA051MKO8JTFeOUAIWbA/BJWX/MTcRl89j2Eco
	lc0kj9bKNuO9euGFd+KzU2iv921nhm73pBV7rMe2oogjRlh5Xe6tCQbyuY4lu5s6hFH
	fClMHDijbyFx6azr1qZPC0DMkv3ExsmOMtVloE60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa309416-e9a21e2e-0392-4190-bb8d-386f32c050bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e31f45409cfa0a357945033aaec3653d847354e63f8fd11cbd5a710ffeda0a8
Date: Mon, 21 Mar 2022 01:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647827784
