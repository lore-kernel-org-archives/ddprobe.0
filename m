Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC5D7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658570812;
	h=To:Subject:From:Message-Id:Date;
	bh=JKFWfBVDUjnexcW+QxLGbrgUP28m3Tn3jNgzRPbpeqA=;
	b=lnzWz9DSHx75qklMiEAmFJoaCCC8KYLSGObX6jr1QahBtyGrU20VmiKZg72zbYbu
	JaqM6rC/oM4QzB71aBBkkxuoVWBldqv/OGwfDwi7cIwFKhCFv4rLIrIaJEzovJ9gFHO
	Xe8ScaQuffnqUkFWCpnDFrEu+06KVH0MSiVBh0vk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658570812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JKFWfBVDUjnexcW+QxLGbrgUP28m3Tn3jNgzRPbpeqA=;
	b=UPEf/ZH5StLvMn5uhsJllgq5dh3PO5mS1F9kzItmLinmfsFDuszk2WBA6/R4HgaP
	fadS14cZP/jw9fUygnIUor8i7jrVQ/3LzODM7xYBvR0Mb6Did3AwtJf7QEmJeGm6t7E
	khfctqUx65VKqqscQnqRpG9hvVz2Yhm0L1U3n48c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a862b61-17235ca4-437a-42e9-878e-cd163ca4c5e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74ef735c405dbe02205fc2651778d27607912c2cd866c888d5503e8bb315665f
Date: Sat, 23 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658570812
