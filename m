Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1BF27B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 12:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655556599;
	h=To:Subject:From:Message-Id:Date;
	bh=NfMcamymV7UcuCcDDG6YLhYJc1XHEeZE221HKb1jdrg=;
	b=btaNWfPCdbs9KNUhMQ9x9GRTOwq0l9qaqKjVHLEcJmoRD06H6mWeTBI8QLixr/lJ
	Dihn3lVXxgZknM0+UF2A4KXoA/Y88lO3AeW//YuHkYoU1ciwXLA4w5QPNtlW4ApFBWk
	bjq8CxV0vHjOce7q+ft1+SX5i3UIOpIy3FsfYkeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655556599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NfMcamymV7UcuCcDDG6YLhYJc1XHEeZE221HKb1jdrg=;
	b=gXIkjBpZ9ZkBeoKBU95CG1Pl6MeUaVtI5DExW8EwHBBcnSSCOADz1BFOyPRaDBy0
	P8NjiG1TMGje3fsyffG1PIM2Qv4ChGjrDtmz4yDut3B4gxFwdJmYVZSSBIXNFGB9Gjm
	6vqahm7pzhhu9YkAGQKz6rP/gV997ihDDXMn5GfI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176dcedcf-9f5a6292-0c75-49e8-a68b-f8be8554e828-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12764957c02b292dcd2ae174245981b49f15d1a83e3e9cfed981be416e95b756
Date: Sat, 18 Jun 2022 12:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655556599
