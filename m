Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1478217E5
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 12:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655469659;
	h=To:Subject:From:Message-Id:Date;
	bh=4QfC2FO/51dKiZoE6td96IK+KwG5VTgjkJH4nU5JZgg=;
	b=WOit1aiP4UlnEARZaiI8pJQjgCutJZ2855CVI56BNXNKNYavxnGbJY1pTE2Bh287
	2waOXebBqn+5BB09SAD0BCCibJfY/UThuzfSfveObX23gcnjyZxjZfV2NFPhAed0J6Q
	Jc5oBGB4xErG4gEk9pdtKj6NJIWy/QlpvCMTKt4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655469659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4QfC2FO/51dKiZoE6td96IK+KwG5VTgjkJH4nU5JZgg=;
	b=ApHaEFIlQJNckCKrSyysc1ZAB2jJMUSsGHwmj/O2xYWZZk0G2/LC4EEMaIci4AWx
	bzS5c9Ee9OlLJP9gYNXsJUX4g8ZZZLH6he/VLozwTmN0A7smpvD9+MIakbtAOMd7uJ+
	idN8oZUg1t05fNPYx0c0AJCFidkJita6+8ihAZDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018171ae546c-8e3f7413-f5a6-40d8-9dce-6e041388a348-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2455cd62f42da83f8c71705e63cced1a49de16610d76989c4ee6fc296024d72a
Date: Fri, 17 Jun 2022 12:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655469659
