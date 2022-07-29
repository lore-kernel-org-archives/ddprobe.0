Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1F633D6
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659078652;
	h=To:Subject:From:Message-Id:Date;
	bh=8QA6UwUiSfzq+VGmPDcqGEUfYog/GEMTlXfv1C81EO8=;
	b=YeRdE92bdEvz+Lx4Uehr12proWdPBPmM6tvlTYtS3Pt1JAutnN/W1BFtEMn6/ZUR
	dJ9KMNbxi2ZSelTqodKNZ96x2emlwOwvyMggSihy5whcQVzP+jWfQCOuXFekW52O7Bn
	6ySxx5fP99mXsoTASQsT6br7R6MJtYkqw8hHOzNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659078652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8QA6UwUiSfzq+VGmPDcqGEUfYog/GEMTlXfv1C81EO8=;
	b=Fg/F+P/pzCJkl1nianbHH0dBZ8Sql+CH/bU3twcMSgXxA7x0CLcCtr1YP0gGiote
	5eSGMeBb04U5hObzm52V2Pc8RROvGnLKh9GlUPlLcJznsbU5V0ECTF+XmB3z4PYEjsg
	rDBsUDz/g1maY6NyS1YUSegkfKMVW2tR1miB03cQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248cb3271-fe631c73-8f98-4040-8c75-d2dfbf9e0e3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37679f1c7a647378f229721486e5b62eb313204c907218e01551c88d7fa23018
Date: Fri, 29 Jul 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659078652
