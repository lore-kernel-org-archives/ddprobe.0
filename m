Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722327F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659378652;
	h=To:Subject:From:Message-Id:Date;
	bh=jvbI24GVgEXAe+pXsULtLIJdJQgrW38lT+paUb2JRRQ=;
	b=g8fiakYFZ74rFBaW8ov4KAUO8I0iG99lvrnnkJZRUBRI22HwEd/d3G+cixELOpMg
	taQCW8yqpUq7U1j9UeH2EjGoh9u2UZ2kb9VURbsjdkjT7ERt4/OHaQqJfXg0mySkeqW
	FLdrqbPIRjPXMDUKp+7IeLs7o46vmhaLMq88iGqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659378652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jvbI24GVgEXAe+pXsULtLIJdJQgrW38lT+paUb2JRRQ=;
	b=C84Qtl7BK+DGjoeV74Rpbdox3SFF3lmkCDBSKSTwe17KWeEU77tjtyF8TdB5LIS4
	Q1qDCAsGEBCEIGqgaLRtFC88Ynj6HqHQcnzahKTDb2EAF1nkE+zBt4WH7q+5h1qKEo4
	NYDUpJaXjhwYVBJmjXQYtnr/3IWFXD6O8cqTtO+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825aacd5ab-a098505b-92c5-40b5-9309-0fd5c0a44131-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb715a983bb5a84addf4f636e0275e43e07ccb17fad86e0a5cda940e0f275243
Date: Mon, 1 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659378652
