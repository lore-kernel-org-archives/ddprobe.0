Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0EC3D8B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660738253;
	h=To:Subject:From:Message-Id:Date;
	bh=KRAwQhvOIt5EpvkPhuvqAgKfxrdzn/UbLFfGCZZHQkY=;
	b=bRRFJt8jUNqNP9NvULdy2zoexpGT/UfiELZ107LOTGQfakiIMQxWtQPMciWOlfa4
	5BUSCw2Y8DZO6Ucq3Q9573ldIaOR2Jz4h/0JzTq7qPZhOjzmMXt3PSBJlVtoRXHjIi6
	bLIgWDjX4BYxqhH6IDdGEH8OOq6I31OlbomMADms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660738253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KRAwQhvOIt5EpvkPhuvqAgKfxrdzn/UbLFfGCZZHQkY=;
	b=Ngf7k+XaqlaXvXinnJcZclne2INf/gf6LNlDBhOukGhmG8CzJr0RrkPUAfiFrNtB
	PxDjEDEjtfZKZa7ExwVR9+odBRzJeMWLc26arTqsrqsLoa6XgCjDnX7NeSDi+fG84BP
	hpBAeb+ZXpr8KkKaX/koFArw6H11hQXU3Ecxzs3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182abb6af34-09257f67-e4dd-4bbe-bce7-25bbc9ede899-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6c143c1d56c81c3f6864ca8f230e56f7fd5c63c7d6a66b27481dc17d6487f32
Date: Wed, 17 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660738252
