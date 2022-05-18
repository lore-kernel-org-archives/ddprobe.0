Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0491F7F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 00:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652834219;
	h=To:Subject:From:Message-Id:Date;
	bh=hgbawkATrtB1NNS1kGyobrK2I2NfqNqUo4tj07phefw=;
	b=hqCV7qToCHJ3Lb2M7TIG29WMWAZUc6h8Tiv5595CjCHyWpj5+hjvxmcH2OfbNfyc
	v0zI+SNmoWIf5950lXajlZl3TdU0TmLXNaSNaSC0b8Q60NcKjQRSQaCF+OtqvdMf68x
	w5s6ElZsR8Gw+7kshebh8YqGwZiDYCKCz85dytpU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652834219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hgbawkATrtB1NNS1kGyobrK2I2NfqNqUo4tj07phefw=;
	b=bzrj2i3EI9eLa2Mcy5J/07xrnhVOAefq1HuhycPPqLW169CWA3hcVhX0Tjl+nO75
	rywR3AUmAN1zVphsZ1pWF+0ydgh9qywDBhzW60sJgKnzjyb3gNzqzR90Y1tXx/w+SxP
	bfd8moe9ORWmekKZMfSVPO01RRE8a/p5xs9Okys4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d498b503-682d4f40-6f7f-44d3-a7aa-6b2a9e63e255-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 709651809e2325300081723a303c7ac2667826a9cf1c7edbe9ce9cb81e487487
Date: Wed, 18 May 2022 00:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652834219
