Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED03023A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 01:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650589498;
	h=To:Subject:From:Message-Id:Date;
	bh=qIfTq8EhlJgSWkp6cQsoMndyFwsc9Prv9zyRhpWELSo=;
	b=IaAUZedIZNDz3ldofKs7S607AnmkTXrWqPTxn1kxDkQCWXL/dj1S7gmcyMW3i2Rf
	Lgyq6vvh3msOTFyL2a8amfNCBACFTFVhxZdWqxXHk/3rN7xWE3X0SgoMktM0rc7g+V6
	6QyXAFRPWvFbtSw0fyiC9u9Ilk6xdZmZl3N0bXZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650589498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qIfTq8EhlJgSWkp6cQsoMndyFwsc9Prv9zyRhpWELSo=;
	b=ElXGApOq/qD+42L9Hp6cVunkqb5dDdjD//3qYIktXdiXkrqDhdN7xt80i/V3oOg4
	h4cXsSdTsROlFfiKpa5miSNNWa7ylrX1DAKwdD4La0m8tnECYIgsdhTEYm1+zTvJ0Ht
	k+aTOAfpzA5rQe/I4+FcbSQYqxcftJPBo6jNfMuM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804eccfba5-417886ae-3429-4117-a530-4bf289505bb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c6f7fe390a59ca132833d4498837ce6666489f3affcce92b9c188ed53cf37c8
Date: Fri, 22 Apr 2022 01:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650589498
