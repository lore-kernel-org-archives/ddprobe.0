Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D728EC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 04:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654317539;
	h=To:Subject:From:Message-Id:Date;
	bh=sl20cud5VXNGdxEGRno6qqaN2VNYBj44zt8jIW7Bgj4=;
	b=Vh1Mo4RvwioLbupCG42jJzxI99LkWsx2o0NRMSKfmTxwq1LF8kMSqTi+u/zMy+Ht
	wZFBTBwbDgQH4iWVYwiyI65Ib1Uc+PCTAJs3PZ5GusaPMJ1TQPgxC9f6m8KaNoy7rOm
	1J5EVTgwm97qrkKQsbms9xsheIiuIyqngZ120E/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654317539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sl20cud5VXNGdxEGRno6qqaN2VNYBj44zt8jIW7Bgj4=;
	b=cT51UJ6dwO9K4/Rg9S1bBbT786p3tgYX0SUMbjO3+TtzlCQQ4D8fzfbNSajOfMiC
	O6xVr31bzrYh51vRwsO/hmcDLBJ3sW3EZjPlH2Hxy6sqGevQ1/l7hY/p47bIGXm+S9v
	OMmTgzCk3jn8sfqKhzWxtianDczx5eQ4qj+IvCqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812d025fa4-1cf73df0-72ec-48a4-9016-e26aeb975224-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7aceebe5b7e24e9763537f275a721e28177415967bc3a38a277deaa5558a9aac
Date: Sat, 4 Jun 2022 04:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654317539
