Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689F9160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647716184;
	h=To:Subject:From:Message-Id:Date;
	bh=tzCie5xKAGkWVTlp/xn3dah65+fdS+CzdFaAF1lQQy0=;
	b=TUuhejyicSWc17VvND/9ZNxtSXV5b2GtM9dFZV+JJPtaTZIveE+/Zf1b6qhVubaH
	IMWwIpjVROcU9BlnIXFPdY+VyOrzXWq1at7Am0RccJE2MQoP8vqtQrj9dbIwKKSlDnJ
	4EfitIAermxjd59+CGS0KSP2PhT+baAw5lILZ15Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647716184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tzCie5xKAGkWVTlp/xn3dah65+fdS+CzdFaAF1lQQy0=;
	b=QPkbU8nQFF+BEGWYe825n5vq60tlWQe7v0lLScOfeChn5snNdJ7cvPn2Pki4/Why
	1rrJlE133ijJf8TWx/WpUatwFHQmXLA6C2Fev4JhmmBD9hCsEYvecXGQW8Xh+iC55xf
	/gpx/s1Mnuwbyy6hhAknyL2EylpZVySsb0r/iyk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa389b2bd-5abff234-29f3-4385-b0a8-5e55ecdbb3d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2692e6e5273b67612609bef415333b6924cf261e2e2245584377c1220d0066f
Date: Sat, 19 Mar 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647716184
