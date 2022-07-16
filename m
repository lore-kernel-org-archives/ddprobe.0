Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B961FA4
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658008012;
	h=To:Subject:From:Message-Id:Date;
	bh=EMz7BXGNAi3UiCLjEZwdUXwRKBD/vrv5lMvfLP7GKG0=;
	b=Yldnapeh0+euiVQrz+bti9+DQusxhr3/eCMjacioV/NPR0I3t9SR9ALIms2akCu4
	Ufsz7xnn0sQpsQI2UKwx5UMhN6x0wg2v1GydZIHnseUfboENdMzyp2twpGpcznz6u3C
	8riVmrgd2mglfwQjh37zJf8QX47+rdCmMAVhIEEE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658008012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EMz7BXGNAi3UiCLjEZwdUXwRKBD/vrv5lMvfLP7GKG0=;
	b=Rl+jyBSQMf8+VMDc4Q4+rC1d0FslQi9b7nHPuKuy8FN+JBS3XJohq78oZX1i91FW
	MSOMwouwCp23/pxMFX1RUXvHgYUCMWEgN1C7quoBHFGob4ALj0BBj6rsfJ4gF9Zy987
	cmR0fv/oILEUQD5u/3j+Tw4wWZgTdj/Mx7TqEjtk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018208fa862b-95ef3137-9aea-436f-ad96-2a10e2b73b92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4389d789700e0038d6c93dab7c73be9e6bf962f394919fc7265b0a112cd9e8c1
Date: Sat, 16 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658008012
