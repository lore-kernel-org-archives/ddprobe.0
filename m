Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E721A23C2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 10:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653732839;
	h=To:Subject:From:Message-Id:Date;
	bh=/wmT/Fnaa1npOCPLyTyLkZGoFWsUtoG4nBMHd9AL868=;
	b=iAxax9hOIvtZoVAx6T3BHHdOsyZ8ur7AkQGn1/pJJm6WUcZE9UGNw56XyFZ6e/ol
	KlTlvcgmxoWJSOb9Azx/V0ALLcmlg7sMMC12QKFplL1AStBrj01M7hjJTbM/kCZz9S/
	NkTSH/Ir1T3sby+fw6iu+ST0T3GN9pQf3Tcd0W+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653732839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/wmT/Fnaa1npOCPLyTyLkZGoFWsUtoG4nBMHd9AL868=;
	b=JewAMigfAqEYglCHPkXFGxkrGko1TbEUklNY4Nq2XadNUrfYsgru0D9TxqWmpMIE
	yVoviBR8AY0C7Pqddb82hUQUXzBNUUGwcDdninOHuhk7MH6i5FUHI1xl1uwTzKDBkbq
	1R1p7XcPPlw1AU3JQgXjX/CSeRhJIkZHycvgZUrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a288f81-7e5d6a26-743e-4bc6-9571-3c12f8ce72f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5600e667c52ad812377d7a634e0a0a85bcbd4cc28741ead580c835f723e5214
Date: Sat, 28 May 2022 10:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653732839
