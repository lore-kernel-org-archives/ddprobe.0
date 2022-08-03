Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1C21364
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659534052;
	h=To:Subject:From:Message-Id:Date;
	bh=eZVPWlW10QBKZ8JRFyfHE8elUZPtqNey5zGRYrXG99c=;
	b=D/7YUDuwAef4dA0WusxGAGAaJT6a2k8VtnErJT4rfAd77CkeXvG8/XWRSHwRK/WJ
	6IBRKiK7A1LCU8Abrk6YaqLDBqCCjdC+0hJ+m7cjs8SAOjThbIakR6uDzQltMOEq2wd
	Hh6WjCiRFm3e/Lv2aYAqVZ6BFQVM+t5C3wDTOdLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659534052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eZVPWlW10QBKZ8JRFyfHE8elUZPtqNey5zGRYrXG99c=;
	b=dmtqCxFeZBS/yhOzYsCgeCPu5Pu7s1vgjjT5cS3sqKqNsrXEws2MUY+bqCINeX+F
	r+d6cCcasa//Yd9h4rKUa0VHobNGR7S/9Adzm1M01uwBR2S4NkTOO9lyrJUMYgP0oYQ
	9eRXA4uJQ7i35AOOdu4Z/vvb8o3oaHcjt5sT76XA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018263f00cb3-123443ec-b827-46dc-9809-10b74d448db6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b75d1df030c99c2b86f87775fc02a37770102b0efa9353a588c465458af0429b
Date: Wed, 3 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659534052
