Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388201C08
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657388812;
	h=To:Subject:From:Message-Id:Date;
	bh=4v5iOl9nUxi9nI8j9MOcD6UOwD8HYTuQ/d5cq6NDM8c=;
	b=PJsxVIl8N2EnkgZCfVg+hzIyXqVjJQEFo53Q8SvUn97anRLr6p39HVjrPamL04tQ
	6UzOYhsy+Q0XTGKbQxFk8a+69xeLFsFLPH45Bxjbbvv1E3Zb9RrmvN1FmPdUuBMn5eS
	xy5SCwIUZudDQoDM4n5dwV+A5VAMVCejvlEH+pK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657388812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4v5iOl9nUxi9nI8j9MOcD6UOwD8HYTuQ/d5cq6NDM8c=;
	b=MUCCnBByx1x6eDgTDM5lM0UU78RRGHQSa3uvWZwSL1aHXFB2V90XpAt1otfzampP
	ISsCdtP4WlKag4/6bNiD/Th4nc9e9+t4YZ+kZ44E0KA4t2HIDP4S+VYN4Mo3QG5tX+I
	1QrH7lHUqZ8t/g5yAkwNA9x6veMUJsZDBQEuCi74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e4124883-b7d464a4-5008-4aa8-a5fc-1a62dd45c2b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b9875b77a6e7e4f7fda6f85e027bf9bf32f7b40243e314329a6c33ce0c92dac
Date: Sat, 9 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657388812
