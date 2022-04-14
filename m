Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B3F15A8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 02:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649902918;
	h=To:Subject:From:Message-Id:Date;
	bh=Xc7Cv6kcYQKNQxeP9QpJNutzUzZdf4dSUqsI3afFnOg=;
	b=iD+gOJod3iSVsIJa86Se4deLfWz4mnHjy8Jbql2TFse9HvT76CSQHF10dSD4QHZN
	G9z6f1LLScmv8JcEFZVeAS08jcrK6apGlbwkr0DvorKhRCKOgIpw5392p9uEtmfz52n
	2kGLi890BekL07J6gVNzdaX5l6JnfiktWhMX5td0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649902918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xc7Cv6kcYQKNQxeP9QpJNutzUzZdf4dSUqsI3afFnOg=;
	b=Qw+XS4J8eEUEcyibsXarvDHigYghp2Yg9bNWci5HtubsQTHXVJ6fM51PBKFdxgN5
	lHcyDGZ3H7Q14Va83hSHfcrQMi4rxj4uPfrZCC2KLXNpLIyTjyBAWyysK2+3aUzPju1
	IlUlQ7kwsv6hSJ5Bpgr84R2SbRHCsZAEwRORwltc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018025e09a79-dc870aaf-b51c-4178-a768-0f56eb1fb05d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdb039841012baa5d0d32e684202df72387c03590b705e975f157aa003efab52
Date: Thu, 14 Apr 2022 02:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649902918
