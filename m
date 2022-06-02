Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB127F5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 09:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654163339;
	h=To:Subject:From:Message-Id:Date;
	bh=lAOMRj7fkrQVuyl1dowzDQWfBHH6C+kIdHnW+4ceKiE=;
	b=jaFdy01Kh/rjbO8VO72+fY/V+A1ACxEF+3vdg2424VbQ02XOjbeCxI6Ee4xximu5
	ILOtS+QhwBNycquC/erhwP0oHTGBb7drZm+1XQ5ndC+2KtVZQsVCHG9O/JyIv+k+MRs
	L3KiD5KNmfDqYFdyiLSV0KrpOuwvY3t78/6nx9oQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654163339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lAOMRj7fkrQVuyl1dowzDQWfBHH6C+kIdHnW+4ceKiE=;
	b=E5n6Ol5/D5sq34nzCDKJDH8YBf1Vxz5PPd0cD2mTfVG9XLX+RJ1LoWV50yZuTV8t
	yFzDGJ1h9fYWCGlkyiPIwTsqXvvg2NGR9glirCLaK9YcFSPPYcEJgWX5Va0nNbvQvxf
	8ZDf1cjgTLhFyQA+smUN7AhcMlGlc09OY1m0FHm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018123d17822-eee612e0-ad98-4035-ace2-116bbdda6941-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30e5089d27ce1703e52570a1b1b83c8e2374c2e9e1c20fa687b4dd8b69da0ebf
Date: Thu, 2 Jun 2022 09:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654163339
