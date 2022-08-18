Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA472F22
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660855252;
	h=To:Subject:From:Message-Id:Date;
	bh=sI7yVIBOSUMJARpyBtCFikTErzQpo6wG4pTuwSvy3H4=;
	b=TTfr0kLy94XWwXC4NU0ASH4APqaiqq8z2tG6SoyUYuG2ZHKj6tcgph66lE07TiVM
	wOIwr8aHj9aTG4xvL7uRDrOwhqjSMV3t31wailkN96OUB7ORBHWh4eHnUT4nHUYq546
	VZ0hkujy0a5Dc36bZ6r4ADyz9BZb1MuFVbrIKgyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660855252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sI7yVIBOSUMJARpyBtCFikTErzQpo6wG4pTuwSvy3H4=;
	b=V4lFohVMrZk4YzrwCfNvbJewO5CSs1zKVtRk2peiXxZL5Tce9owhNbM9mpH+DBer
	3AMG393c4rreW4FUx6QIf8ep8Hbk5pzYKYicOmmQ55T423nm8MC/mXYiHcacUjERotu
	72slAcu10wvrynSX+qZUs3Lh1XV1FAltNNumV7qw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b2aff64b-4cd4f050-be1a-427e-856b-069885aa0a7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b24caabf439e0b1956bf4df1586adf11f7441cddf4b4d97a8d98b29a7f8fb7d
Date: Thu, 18 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660855252
