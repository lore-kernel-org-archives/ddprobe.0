Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2157C7E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 00:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649982238;
	h=To:Subject:From:Message-Id:Date;
	bh=P0g+7bsk7InmAyRfLRjn3HYGBtKQSoNZ6wbINtX3bAE=;
	b=DsBGuezBaW4DyuurmjuZxa23KBqoXVq7yEHfT1TZ9DDaj68PA3bvxkoF0cjrKkjK
	wEJJNVcdrwE62FonIaTb2Z1s7UwIPbr+01TG0nL/kD/5VkBKyY1PYykjSAYzLaYHTMB
	9pGwYsgNdBPJb4lK7h3dHDYa8t/b1K0EbC9uD0Ao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649982238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P0g+7bsk7InmAyRfLRjn3HYGBtKQSoNZ6wbINtX3bAE=;
	b=KCPy+xJ3xFRmJKwZeTfRIXJ+tJ6FB8VwqtyzWWGUzwV3Ln01sguqfzs2gs8B3OOl
	P/BGYujgT01crXO63JTyLehjBvhbKImD1FbLUumsgmaNTgGjHtOBilmFkmW3XEb8VmH
	MTQXcXmveZtdvJwSVUH2B9mmg2JTLuuIpFeBrvzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802a9aee37-37a4e427-0629-4a57-bf77-f02df12b2e5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbefd186d141efdb54be09a379204578dc35f1e5e4e780402e34ff3ec0d82d80
Date: Fri, 15 Apr 2022 00:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649982238
