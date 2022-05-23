Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DA936E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 01:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653270179;
	h=To:Subject:From:Message-Id:Date;
	bh=pNabLgVuVeZvlPw8GqjD54Mlrz7j2XfmrsW/e4MAJ6g=;
	b=JBhfH2EeioOecDc6IldBYkp3T9NNaaQL9U7TYnFbZzdEYEF9M1gpYVV8PGdnJgA9
	6bjTr8lMG+xpy1/F4WwxQkRGQVfzwdT0o5aNkJvgiXwyCa/B7rLPGFKqFaU8BBkvfB6
	MT9iKpRls/CZ9BtHpamSdmElnDoW0fePCgu/Y3BM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653270179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pNabLgVuVeZvlPw8GqjD54Mlrz7j2XfmrsW/e4MAJ6g=;
	b=ZanAMA8foU/s5iHaktJi/htLro2ve4FClczUYxwX/Z3J/HyVe733L+TUAsS4Cqyk
	f6wkNggvwUX7cg++HFj9Xz8lSaLXOpZL42co0DLHXks3f0yNYu3g8S9ndF7n5qWJi6w
	a3/yoLWHUfyybNfap2MAxhk0SulhXHWVOuAMppeM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ee94ed92-562c796c-eb76-4627-bec8-25167354d8b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71b93b6c5a08536b5774361f71e315b1506c5ee722196415d20eeb58bbd20a7b
Date: Mon, 23 May 2022 01:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653270179
