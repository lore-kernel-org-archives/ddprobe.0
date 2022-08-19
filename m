Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF007B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660883452;
	h=To:Subject:From:Message-Id:Date;
	bh=yH1/pm2VeCeRaUvYpD1pOnlnnqw2s/noBtWfQwjQxCk=;
	b=Hzckfol2/HcpTn3W1anvik4aPRYp+CizoLWDY10+GbOzTYiF005zq46XJJZwpTNR
	n2RYjjfnlvaEagTP/PxRuqiHgVpWm0IRd4JODwrfqljxwAy1GoD0BcUdr8bp7z8A1Ul
	kRSQmwWQBLhFclUitWl3ZSKrV86AYIPDRqqqNyMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660883452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yH1/pm2VeCeRaUvYpD1pOnlnnqw2s/noBtWfQwjQxCk=;
	b=ErMWld6opt53xjuEim06MZCkpxGBh7b3wr8FylJg5Iqs/5NYoexn8mUa/DTlQCQ3
	hk6LzjUsKVyb758sIPVQgipcGhhFU46/kmAPwhD1yR9Ebx4JfXFRGvnfOvePQQ0q2bw
	8Wt8HBNC9oai0aU1o3AzQv33j5uHvJSbL2wFkjhI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b45e426d-ab9550de-3b8c-46cf-a3c5-38cdc52b44ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54ee62ca99b2a919e45daaa3a452daa94b8958187536cbe83e091c3cceb1dfe5
Date: Fri, 19 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660883452
