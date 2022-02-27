Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F71C3222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645995985;
	h=To:Subject:From:Message-Id:Date;
	bh=RnXOUe2HuMBCQXwI/aJYpjjeYjeBP+39anG+Q8qqH8c=;
	b=Mcf5UtxWDFCjnkJBcE5lMF73+/9e5WZ3jHRM6Xsbcc97+f9CpfjHuKIgHHHaJ/hV
	Xpv7R0kq3JBaJPyRDReVAA3Tt9QNy4pI9uagss25CYrtJnDBGPc7Qhv2KCfV7cDxGhB
	FQbixS8hzDA0/ychvV0PeoOXZGwINlpGQidZZA4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645995985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RnXOUe2HuMBCQXwI/aJYpjjeYjeBP+39anG+Q8qqH8c=;
	b=DzFGXV7fE565yYqpq/Qupu4Exg7sToAlDh2+Km3EXku6UcRVVRq+LKc1pPG8/x7I
	TBphVBoJF2Qvz9Ai2ZGjkZDxhs0Kuev+u083HAwzXb1HX5FEfymMXSmrzNRRTFlilJJ
	SFJ8D+dBT3rJdxzupoOnZu5SrpNWn+GCIsax5N8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d0187f0-5a92087d-0010-4518-9ec3-520991313426-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 669ca2683a1006a03b007330c4a8fdcdc651001ecb361116cef1a056dcaca14c
Date: Sun, 27 Feb 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645995984
