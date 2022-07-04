Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348E04A18
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656973012;
	h=To:Subject:From:Message-Id:Date;
	bh=l/ljMGAwPuQ20hXgM7klOwhlJTMYziYGwyIJvGsFAUA=;
	b=N8P8nC2QJhU1iUk17ZyYH+JvM/A5Pm/jhtcQJdo5g9i19j1GlB3yZOR69doo/GrN
	Rvg0L73B+j7OwFUOAKtVCD86yYanmk4JbNASG7UWX6pzC+Ctv1//je63aDsXtY+RBKC
	FxOF2iABJ3AyVuHJdv5zN3LJMqjL4gLHNe91J3dM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656973012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l/ljMGAwPuQ20hXgM7klOwhlJTMYziYGwyIJvGsFAUA=;
	b=kDeQOe19TSXLPchUq9CULwzGHfKr1cvg75nc3tGgU1Yf4NDBoN8VTNQvMPPP20ug
	XxaUdqKGSPuIrQzWA8IBFWXMdZLmrQABl5TPWlm4doFc7qEkVsEd2VDACTZLt/Bv19Y
	y8dhc/YO8yyMuMpvDqZsidN75aillYeFHqMe68vM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb49ad64-f0373b98-e985-4655-926d-74995a05a820-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b734effcfa8f29ac92a7fe4866e5a0148c1244a2eaaa4a49ad4c31b484180124
Date: Mon, 4 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656973012
