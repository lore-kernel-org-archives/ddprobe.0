Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561DE7B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661245252;
	h=To:Subject:From:Message-Id:Date;
	bh=BGQfYRmVWubfW3z8tXWO/CBHgdFH1ugWuUo10uzUfec=;
	b=OgG6YV5wSDQqz2kBj0np/vJ1zhj9nUghap8IzzEZqEHELh23MjWjfUmOLgFJ7R1t
	c1H65iSL44uOBYlkIE8pzacmn52mhm4c3NTXlYKWt4f5upJc3B8K50Ood3t3+yysxMF
	f7QlQc8eOqCMugqjU9syTPmUUkq9PQwM+mvMvcvE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661245252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BGQfYRmVWubfW3z8tXWO/CBHgdFH1ugWuUo10uzUfec=;
	b=R1M6cAlSXX2UaX+gJJwL9ZWK+R0ZzB+2tklI/K1vCTkzo+FY0dq6ylwEsw9Wrqiu
	3YFexB3kxvW5hbuQfI9sYZDJLsAEc+Krv5W4LlIfw9tIzvzr5pegAA3kXqmGIuxOO4A
	wM09xU076f11MBiCAuJw0sAoDopIkOCNxp8a6HEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c9eee426-437dba4e-3459-4ba6-b7da-ae107803402a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9200210bd94bd605b996e980d6937d4d7ebb2d0f6c5a73a9d7842a182364e679
Date: Tue, 23 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661245252
