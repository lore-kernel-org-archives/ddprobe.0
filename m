Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E6B7A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659068453;
	h=To:Subject:From:Message-Id:Date;
	bh=VyuzYJOMrXc0YHlcudejltQBiZrAi00Q/MH0y0x8/eE=;
	b=DMy4YUeKv6+ft/QoIr8bXr8ryt/M/ZeXTqP9ndTFoHfHS4Gks0lCxc4eCO2BkKVe
	RU7GvMJ0bX4NlLF+ceWL+Ky/l26sH8PbU/ncUqfh2CjVqe5NC5V2PxJ/Z5RjlS0jY46
	/saZetus+OBeIJXwEivkiqy5OUQtfIQJnFofHmjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659068453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VyuzYJOMrXc0YHlcudejltQBiZrAi00Q/MH0y0x8/eE=;
	b=QHAvlcKoZyeZ4lNewlSC/42GmSwcYMdrxIFK7xVwMzo7tTsH64xujxLN6bMCo9wh
	07Xc6C6Ke/3S58aInYVFHLD52qr4T9gfjwPbtFqaejCBPpzmLZx//0oVinEDX/O2rt3
	qx6MVPp+bpO8nfEvv5pgObic6K3OlFtmi8nACVBE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182482f8eeb-ab822a14-ba49-4fe8-bf43-7838dcd03c0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd37c94abd66065a6ad214568beab74d7a64da429285e03ca3de933d5c9e06a3
Date: Fri, 29 Jul 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659068452
