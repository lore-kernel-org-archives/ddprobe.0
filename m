Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EF86646
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657146412;
	h=To:Subject:From:Message-Id:Date;
	bh=GjDpF9uba7Aca2CtI3uWRZZ9X5503cjexzNChMDIsPs=;
	b=c57UMLHf/a0W8d20tDDkSb4G2GI8fOeJN3dh1nmOezAXXIegYhc84+8WuLVqUvN3
	EhwxUGT6w8cHSvJZv1ZuR09IOwagz9vd+3xyTurXQF5GYkhU29vsrwosEV2hg4PJs7S
	Fd0Hjst9jDRoZ57PCtkgjZAKvS5y8+KXMBnog34U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657146412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GjDpF9uba7Aca2CtI3uWRZZ9X5503cjexzNChMDIsPs=;
	b=QworgaDDi0BHLPbD6SdKSiy800hSt5eg27fbBS622usRz+Fsa6mkOzA0XhIglCa9
	dnfJHm63FKDmG4CvShTuYNdGb5nMlYGplxoT9HyrSA2iQQ9CGkVqCYcuRKFeKV1Ow7K
	wbha6MkMZkhlLdMUeIrLlS3OMUX2FcdDqwF9M16c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d59f8d3f-6e499464-aee9-44b7-8f0e-48e0be9dd63c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8c4673e90f1773d067ae8b9a972578f2c9d31c3aa8f3169e46b97354d63943c
Date: Wed, 6 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657146412
