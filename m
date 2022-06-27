Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ADA2586
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656322012;
	h=To:Subject:From:Message-Id:Date;
	bh=Cd2Ui5AgvNcL1R6ZpDZHs6f3D51scoET/FJvIqryo3k=;
	b=FAA8+wBZ233v0VM8Sy9yGqqthFpFgbBxsL/YQ4m2bc9maWo0aS5zxLoQ0WxwpK1K
	GA6EC4S8L7qzMDqcZwyratT+NSobmCDRrVVJ5vhHT/mZAbI+N8J7KbAPfwv6pH41va+
	03CwQSdQvd7VrMsDJrlnQy2Rjp20x/X9drTqU6B8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656322012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cd2Ui5AgvNcL1R6ZpDZHs6f3D51scoET/FJvIqryo3k=;
	b=NPnfLxpodxMNNtFKiq5AdPlIHJXzil/YsvItlLTuWZe8hYZXOi8D5wLxo3Vlw429
	/aJDt3yXVLvettcHY31OkNleFNMtKi8soLYsyZJNXMwo7s09OGURSWj7WXSOQGHDkwb
	0rYMsvcZx6+VuC1Q9UbBkY2lJnW+s/iwhlNsO7lc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a47c346d-18348425-aabe-4494-bf7d-6131136547da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f57220f83d6938376df768922fb6e2e05e58413d5c094be48dfd038caf29b490
Date: Mon, 27 Jun 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656322012
