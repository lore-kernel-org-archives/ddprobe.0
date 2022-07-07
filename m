Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C40A7C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 16:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657210612;
	h=To:Subject:From:Message-Id:Date;
	bh=HabtijkJhSiHuWAHrIBHvrLYGb/ajPuydebf/zWyo9M=;
	b=J677aZKrdpEoSKq4WfbIxHC9Wjf57mxYuVZNCZ7tzUAXrdWZtjg+M6Zg8D995YaM
	fl85qNAoHxffuIn1YpvZf/Q4v9IksWYSTYv76kRaNbfQNqNEVvfSlmaS15E38zcqNJk
	Hyvg/EHC1b5N0jzHchMJ9y+sDdYaO6M6c+BbaBzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657210612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HabtijkJhSiHuWAHrIBHvrLYGb/ajPuydebf/zWyo9M=;
	b=cSIncsZnJIcSTW7UDL803c4G57H5SalhyxNu8vHJzmF7nutTvpzi3lsyyZAZeuhr
	/oeb0QnUdKbgUR9/TISWvv4/uciJyEv5zwyPvI9vPo5jco8vD/dmLnvzNeVlOgRxqUC
	/mamQ6ZVGYV5YZjPPCdk2eihQ1A/yICz2HTdKgXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9732a13-afbc3657-c83e-4176-9186-0eb0d88faf27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 349ff3bbf4bbb7698c15713d7213338599a8b040e2c3bbacc82dbbc9e02f71bd
Date: Thu, 7 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657210612
