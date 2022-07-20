Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F5233D5
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658304412;
	h=To:Subject:From:Message-Id:Date;
	bh=LqY1/cZ8AcX7G1UwUhGNIZu2tid1XvTSF3nPJ6o7wDc=;
	b=dFhIrRV9MfPTvvgqzIIldtWoKGUK7xAW6usWZ3WgqX1tXu63JCGfm78e79Szc/t2
	8Cg3ZMD9rxI8FRon4s21z4yVFP1y/l0ZHpoDIPUnk0NPF4YT5qQrLAhzjCEru7+fpUn
	NNrsdP+r59QZRHBP6V2h7hXnnwAzkKmyQ1xvPDgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658304412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LqY1/cZ8AcX7G1UwUhGNIZu2tid1XvTSF3nPJ6o7wDc=;
	b=UZJcRFa5kpHFQ78ZJc6mpSYqgPM+jJ+ciFYAzxx/e7IWN26IQSFVRCBwZea0StbX
	f+h1t2AoiOEOfOew3RvUtQ2Zi19cN0oipiQLrsy29xW9WpHlAGY8gJL32vMVlaagM2y
	+B0v5VvqWoH1J5sL1FXfvb9GsFQ4oNujA70ecLMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821aa53acd-2b5e68ff-2edc-4883-885c-6733143085a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51f718b125fd90a6702aea9f182184c9ee2befeca96b86ddd0ac774b60dc3b64
Date: Wed, 20 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658304412
