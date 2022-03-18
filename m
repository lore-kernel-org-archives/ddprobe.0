Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973105388
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647642085;
	h=To:Subject:From:Message-Id:Date;
	bh=YCLIQjG+tv/WO07OOTEcMfhlpwLe8wXmNC8zMfvhLH8=;
	b=AwTLM2vcE+UQn+DManFcsqaBm/5RyLpUlrCkSDYg9HoRkDhxDJZPjxNkvzJqWbW7
	hd0x4gRmrHpf+6nU6PLsj7wm4FxQ5DWUAr3oSSOr6/sULtuKwy3KzRy5zryMWFVHdu2
	128UWuBPd0VegKkIauSm7pRDKmMdB8EIxIQH0ggE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647642085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YCLIQjG+tv/WO07OOTEcMfhlpwLe8wXmNC8zMfvhLH8=;
	b=Tl7gcvBsb0CMYpGXk99D8S9W8vjKPbkdwhHtwnsL0mPbdQABNzml4zefwTUyicu8
	3QrbkCV5Fvc3Sj4/9T4DEucazjEVKGf7HZr4z9csN6pUHO+QtES3OuSjooFG4AyX1gb
	fawx6dNDkrFZCbCm4XRfzUg2YIDYZI8LYcsGoI7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f1f0584-0fa0fcd6-6822-4494-b3d1-db0bd45c13ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad8bbe20d3418e7379379269d3e1a33fab2839cffac3fce75d5fabc9655504d5
Date: Fri, 18 Mar 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647642084
