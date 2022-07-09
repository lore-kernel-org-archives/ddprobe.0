Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D58EEA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657369012;
	h=To:Subject:From:Message-Id:Date;
	bh=EQ9DJZtso6IBwwnxskHzzGcSQXT98GaulPRPmGSeh1w=;
	b=SlyFDvQx/zYaPJ0A+Bd39BXt3FFGsHei5TIKbuxqG/ihpaG1+c+k82SQojhZn9CA
	YISbqlqQGBc9LrRkBFGn8GuqaPNEOdNwrHX7Ifzvpa+zK/7LW4Q2xFC8v618hfoc9bd
	KU51EHhVBJivxvoykmzXhAJzZHnZXvF9f8OMiNmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657369012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EQ9DJZtso6IBwwnxskHzzGcSQXT98GaulPRPmGSeh1w=;
	b=i3izHGCPaDVQg+ap7qrkPrWWyVCDmkwS9uJCqckTC0hZWIEgIdZTqRm3jw51ojKl
	lUYSUR0ceZH9/slgtNTGeM59rBpOf7Vna7b3obU0dgJtO1fZJzJt7nh4NC77ie64x6N
	ELMSOTDYJAxGOZAQ07x2KZFGAbG+K76JU0eZIsc4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2e428af-1ed8a899-3d45-4cca-8f48-e4cb69bd01e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d54686c52d0913fa4bc53a1c840c040ef9d7258f4e8368372b65748e0a765ebd
Date: Sat, 9 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657369012
