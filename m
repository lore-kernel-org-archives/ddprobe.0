Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9687F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659429652;
	h=To:Subject:From:Message-Id:Date;
	bh=pROCxOEDkCP5wMMCNT6kl78eCNircdjy50VZmIXturI=;
	b=RH4t96D8RYmDFahKtSKql+o9KFg8wFC0CxRq5aQL2Cp7XaOszgemQpz2+cNYgsVV
	NgJP94U+Cjdfxj1K5cReHGYlUT9UP9WfZtbS1dj1nAv/kLLGrhMdtc2FOkQz1TRqy+6
	MgdZgahAsKYvJIgSMQ/0H7Ccz7OuV+/4l1Svel6c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659429652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pROCxOEDkCP5wMMCNT6kl78eCNircdjy50VZmIXturI=;
	b=UMzfBbbzKl8wg7WWM9T/810Nu5Ov3/olDbA8WhMLPE4wtojBo2/R5yfZIhpKG3NV
	H5QPEI7M2cET/H2xwzw792ES6rgOKYRLZACKc6zhSXM+KwqpkNTmWWQ7Xibu84FWrga
	OgcXht6OKTwMfMt43JZFLybzP8UgteDd53l/084k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825db708bd-98b21f38-a855-4723-9eb0-9a369b3d0278-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f655af8f1047a97d8c7dc92f533f13728ea2ad7bbea76278ebd3d9aaed326c1e
Date: Tue, 2 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659429652
