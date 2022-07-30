Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798F928E8
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659180052;
	h=To:Subject:From:Message-Id:Date;
	bh=rs6o87zMa6xf3kJVW2rfe4QAWYVvZvxynkq62GpbJVU=;
	b=R5eTalOoCJxraNUga0A8S93LylQdkCEEDDvhweS+8eG5DWoFaZ6gdaWlTbSTo/fq
	goqNdT07w+s6wREtgIn4sCRRMTGilIXjjl9F59zxJE5WJKMxl35IjxuidrzkYsklRIi
	9QNMQKi1sl9m6PTIU8F58PsrVof8MOGXNNcjyVF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659180052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rs6o87zMa6xf3kJVW2rfe4QAWYVvZvxynkq62GpbJVU=;
	b=ksuwJx4vYLOgh+ktL9XGLO/IgM9gGZrDFK7HUgxW3dBDxOsySZp2DKAZg6bF/OmL
	nf7gREQehsSaehhXvT6fFaUKaqam8qaqpWV43UUuMQ4NsiGdhuj/bB4e4xnD2e/fo0r
	H1Ql8w3diLYhjKTWTY6T00+D2sr81G/ToPGYwNlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ed6704e-27c7dfcc-32ff-4c06-961d-894aa595c6b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 016ba9531631586282f0d2438f61adee3c8723c6484e1920c0ce880e4deedd77
Date: Sat, 30 Jul 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659180052
