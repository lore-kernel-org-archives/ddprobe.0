Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E670F1FB7
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657528012;
	h=To:Subject:From:Message-Id:Date;
	bh=cPfNKgfk75LdP+ITZLA9vExo57PAAf9pjZ4L28VFRMc=;
	b=Z6CEtm8dM1FLXaAyxbpFWbdpW/O0ECu4c7g32FZrKsQrBqV+XC/jft8kXJOdNl5S
	0eorSvcmPTeYwC6HVxQiNSB5EdyfR13F53BrsRnRTMaV1kYARAYuITB7cNUAzbxOfDb
	qCCaVCXywyAABNpG/nxBqDfqzGrXhLbO+TkpuM2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657528012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cPfNKgfk75LdP+ITZLA9vExo57PAAf9pjZ4L28VFRMc=;
	b=Vdo3gR/xVoXVGLy7JpSLO9RN9TbfUFWLPxAhP/+tj33a4ZgaDJBvNs70Z8oq/+iu
	2dzcfDaq+GPpo+/mrnsxRPFCxNiibPQ5xcTkLFLQU4zDVWHr4WegXq0hUcQOG1ys4a0
	KGaS2m1+sUHUL0QzOUahxDDpLMUMWY5wVsVjaFMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec5e4e02-96a14ca3-8152-463b-adc1-5e8726def681-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f87c4f111c6e18d4d7319c30952290891248dcdc53db9588d529fc63f39206b
Date: Mon, 11 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657528012
