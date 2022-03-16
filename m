Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8492FAF
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647417384;
	h=To:Subject:From:Message-Id:Date;
	bh=AMMEwoe24GgTwvYEr0yAxQcSqD5Y/4m9EN+x5h0qqCg=;
	b=Psfd3UPt7XCHAFCy7kqIJTW8RvAl9Uw49sTV6C6UUaYSPb1pgNU5mCjZAyELoIG8
	S7bOPLzK14SXt3eA/JOgXEuE0nREMy4ql459cBMjwHObmmhz/QsRROyTQnmtXOSzxDV
	+mVcjDSu5XSJ6Id4agrty3P2PPd8kJOSHFlEFbv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647417384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AMMEwoe24GgTwvYEr0yAxQcSqD5Y/4m9EN+x5h0qqCg=;
	b=WoD168LtIMs5PtHRc8USAm91TQimRtIxJoGGQ5fWOoofl6ZptGga7hqmxiWIPmuk
	MUxsQ1zdC2f9Tp4B5DpinyOuu2tlpL5WD61ev6g/Hu1INv+OynAUyu8+2vzhV+wGjXB
	SA/uH7wt5inXnVNIjYj8qPBFsK6keMsL6MzmKxic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91ba5f28-36f243bb-2f12-486b-9b40-6e42275764d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 445069ddf9a712f8d0f8bd430e84d94fcc9a188903a82db3d8e550b688316771
Date: Wed, 16 Mar 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647417384
