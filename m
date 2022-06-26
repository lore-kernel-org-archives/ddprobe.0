Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B51219A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656212212;
	h=To:Subject:From:Message-Id:Date;
	bh=dG5oJFCN04Ju/b+yXzoXas8Mo88YmKonZNR6b4eH4NQ=;
	b=OaQzd1rmrevqsejEqOKz08rhf47MeoEYO/dYLd8ZgZml6fKyLMNtzCsklFm6k9OX
	ldLQOAmidKXdlPPk3xSJkgUn6xe89KQeF3MWiATziZO4fbdTTi4iiiGRqnYNQOh380z
	QWlZdZHynGbh2S3FpmnbG0p5hTF8/wQyD7l1tThA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656212212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dG5oJFCN04Ju/b+yXzoXas8Mo88YmKonZNR6b4eH4NQ=;
	b=kBsuNd6Jed0mqxkZk8OWgiV8SuFWAGfnFwg1ndy2Er2gsvt4ouZWtg8jc0qf0MY2
	i1Mvqt/LJSHBS1sgOIY/z6x74BKw22GbmtVJhnjZeRuS5yjh6+eixkJj64du9MP35KE
	MAHxMB1qZsG7IVQPNg9MEEAy55jiO1n50lzhcb7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819df0ca2e-62fa6585-fd5e-4062-a7bb-0e1fc22784c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f7de7d5a3a9f97c61b179031fc360f766ba3d27705c47ba2ef2e6cfe78ce9e2
Date: Sun, 26 Jun 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656212212
