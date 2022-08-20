Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BB07B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660965652;
	h=To:Subject:From:Message-Id:Date;
	bh=xPGCU9Jy748IhCyjbjjwEvsDNwptGb2t9MOxdyMtWNs=;
	b=FKXXNcKWRylUuu08mg9gVLDoQ5dwVHlwHwS5/w4QBJBqQNkl7KGuBDuihQfqJ2+J
	mJG2S64UA+e5xa3RGAr1c0gpbmwzwmtEe5MkSYSzT+Ky4BoYeTK/1gZqBFAB0psq/Oh
	ORYg0T9UPv4tb4OypJnps1sC6NzRxiRPzY42vAnw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660965652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xPGCU9Jy748IhCyjbjjwEvsDNwptGb2t9MOxdyMtWNs=;
	b=BlO1VV2X5NkRs1Apo+0BJspG0gLebsS2BnRUaH9LDeotD2d/HmNhdJp4Kef5jyN8
	+wUX5SmE66iElVKvvDeeo8NC4XygdIN8kjc4iNqcNtloVL7sOagNg8Y5MtNLN8IMZeb
	m5OS39HOqI27FQYQwz7OqtiLbtvXy3RJeZapGiM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b9448853-4a5fe856-52f8-400c-9960-8340f5315fbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9417ae5bd80e101c69b610c484f626ccd1ddb1173bc217e21b9d423a8bd4b155
Date: Sat, 20 Aug 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660965652
