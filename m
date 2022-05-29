Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFA615A8
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 00:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653784499;
	h=To:Subject:From:Message-Id:Date;
	bh=T4mkhVBI6KGp5lg1Jta/n12FkDWbgjYuAqfI14p811U=;
	b=OP2eBwMX3R5GgI/Y6TDzWKuVQCTBk7OitaGdUkOGhKlcCs3BWsp0Kanr19cqWh2u
	6uL74LAoK84zaUsRwYd+bap/QzArTx3sPiZZrfFADBBkvCR5PZ+mTSLa/LNzN5WUKQV
	GnDdn7rJWTBs5P5Ti1WkMYDIjv+niq2u7tuYlBqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653784499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T4mkhVBI6KGp5lg1Jta/n12FkDWbgjYuAqfI14p811U=;
	b=eVUrFVunY5O5gNFG9kSbWtpcB5IqaFxqBwvdXkMYgBk39wKAGpZMCwoNFFCvz7UH
	0v0RsCzQkixX5ldXmX7AQ0uy7PrMYsPJJ1seS1WF7Pz99T7HSUhaF8WNsPcnYskBs/t
	UH+LgzfqWUy9qn4ODK2MzHbn++WlP85ViKCKB9KE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810d3cd44d-c4f753f8-eec5-4f74-a91f-f1d1fe169356-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a18691827ad104bc7ff27b90c0e056510fc1a3fe572f0ea16d26f81375b3f6c3
Date: Sun, 29 May 2022 00:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653784499
