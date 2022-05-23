Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200CC637
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 13:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653313559;
	h=To:Subject:From:Message-Id:Date;
	bh=VaUo3XcXagFCBJWij2r1utbKqp5bAOQXO0OYgGauZ7s=;
	b=Ai4NaEvusF7Ijr5mA4RjXOFD1cVpDnz6mG8KD5EaZQyboDqTmF3sumpS5fakJGzO
	VyX8gU6iV7Eq+5eKxkXF2Zw4AmYI5ktppoqeIMqFFgyh4iGoIGBp5ihbhBksLTQhDkW
	gjM5EJSMHpROtjmiLTFgvPqgP5BywBDMRhAjTAZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653313559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VaUo3XcXagFCBJWij2r1utbKqp5bAOQXO0OYgGauZ7s=;
	b=KpOE3c1ewWuTxeSIxj9ysbgDmKMQOtHG1ZMMjiFZYAxkdAQAOCN7CCu/pq0CqROa
	BGZUAj8Y0mdHFHzejcaIjPPcSgdcg0rL7nrTiuy0xs3qvH27ZevNltr8rSqme5GCeCc
	Fu5EK+ayo+kZ3BOjAWA30Q+fEa2D2E2/nfeAOjQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f12adb0e-90a4c95e-e17f-482e-9477-8a30ad3c9873-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cddd966e425f3b28e9ac83a8d4d3be64af4d9c5243538f1a9714a7679c44a384
Date: Mon, 23 May 2022 13:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653313559
