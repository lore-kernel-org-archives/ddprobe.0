Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C023C00
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659076852;
	h=To:Subject:From:Message-Id:Date;
	bh=6meH5WysLdJlc5IbRAQPuS7ksg8KDmORbYuC6o+dDf4=;
	b=BQsAj0AnZKwB9Mr24cSOwj+gObPXRRATSiRdtsLyLQRjYhyOobcjPopmgt91a/Bs
	8G4S6zh8ttNd1UhWU0F9VzI8D86E8+t5bb99ASQyW21KwhvMwyjSDHU8dzuJSVznd9r
	SdJXRopMQmKrh0FstdXC6cidlP4L6mKf8JqRPo/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659076852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6meH5WysLdJlc5IbRAQPuS7ksg8KDmORbYuC6o+dDf4=;
	b=Nta7rtAXVWY48u84e4ljW2OlRjNl3yt7+PnYWaniJIRXARLbGQGbnclqG3qA3E+l
	N41suI8PWKy4zVHVctu0LGUjqQwPRe9BQsCoVApoE7CIttWYxXXkOAbR4mGkga79zG1
	P7fjw5oko+c3D7ngG9PbCJSMxy5myv8T3pSRJagM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248afbb23-0b9d89ba-cc92-4c2a-8aec-f44ecbea5025-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9ca955fc80fc8688f340b6475e56d146640bcc2bd778ec832329de9d8a37aec
Date: Fri, 29 Jul 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659076852
