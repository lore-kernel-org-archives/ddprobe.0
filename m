Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058544A38
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657814212;
	h=To:Subject:From:Message-Id:Date;
	bh=7CMVT2buUczcikzr1nBrdBpIaHIUL456VeZaPOx1z9E=;
	b=QhC/fSAsDq73InJ+NCl9Fb8GOCREapVpt0iNcy6sD0Isq1I6YodVXqDNN3AB5gGS
	gKg0kdvZ217vPRQfV8KjM4vIRUy4BXjFEv7cV7siWQg4P/XIBUgRSdzevp8Askdtdu8
	XstVO1L6jfElaIXrwlEJ1IhC2EYvSeCwv7Ggimdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657814212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7CMVT2buUczcikzr1nBrdBpIaHIUL456VeZaPOx1z9E=;
	b=TBzVL7QRbCIMY3MgJrlKJoPPqgkOMe5E34SJQhANjdNEC837NlswOS7b4mEtSsOD
	8gHsCkQnDilkrt7L6uTj8RW+D1jfUQBWjxtCisP0YMtk2fwPP/OoEPdVQf+CsBzCTCD
	LZkYDuPe/7vlukm77bIg0HgVJmgMxZnDCALKDoug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd6d5ed2-a9ab6101-53bb-4ecb-a2eb-ac6fcb4a9253-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d51aa17c3be0d272ad05ac4f55bfcb5b06e5ad40b02fc7c787cdfea334a241bc
Date: Thu, 14 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657814212
