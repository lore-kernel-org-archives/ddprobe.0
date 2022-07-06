Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7BD538F
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657127212;
	h=To:Subject:From:Message-Id:Date;
	bh=kBTutis1Xd49BwrXMqsFHH9ELPOvH7mb1uJxxofNk6M=;
	b=el0KfhZtE91SfPaXASMzduQ9i08Xfmvoczsu9DfBJBPRstVFo+97Jb2v9993qhXX
	4dyLDD9MMYAGBfwppdLUSymyrF0Xk+dO/ZiyH/uAaDHcM661PmJtnYz0oIYjJ/wTbJx
	x1awog59OgcHUQncrbHuq6ffjwgoA33BZfaNBCRY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657127212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kBTutis1Xd49BwrXMqsFHH9ELPOvH7mb1uJxxofNk6M=;
	b=GBRyfCinhInVZDUCZUHhZEcy/myI8ZdbkF4g9RHIr/VM6HAaJV9SgvF0Z18tPZ77
	1CVluTendt/qnvHmOMuopiyBL3IvaDOrxAWqkrQTk71qXWcvx6cnzOaY0LLWoi6DjA3
	w8kJhQncgmPvlLcT4NQX0O/oQdvZgJ8pQICGdP/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d47a9504-803b581b-db3f-4063-8085-dd737afcdf75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce655ec0e8dc88534828b09a09e9b81494fc317c3598ed6d24325f6d7b1ab422
Date: Wed, 6 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657127212
