Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88958187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645036884;
	h=To:Subject:From:Message-Id:Date;
	bh=y27iaw+ivmaVp0ZFHpOZY4zxKZNDDuZH9JJzoRkU3IA=;
	b=JVK3zViujqe/7pWgs+ypo/2Oq4jEx40R9cd1MKp4RfhHCNlCG7mWJvv+kdu40vXP
	KXgQIRkmgGqdF2FhW7Gd3RvNV8sJZtz0CgEmvSH1FmSyMAjhtgdCRiabNaUmWfN1bXI
	h55EApCNABY6jxzXQ+ZfnGMEU3NnRb6w+maFOo8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645036884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y27iaw+ivmaVp0ZFHpOZY4zxKZNDDuZH9JJzoRkU3IA=;
	b=k3Vm/7d4/GWdgGW/KGmgy0nz9NgpUjteS+xv9FGRon3Jnf12yo7Rm6FlpUt4GsrQ
	6Vhc7sorDAT/Muj4n5qTY4Hb5vLqs4Pv4lXqlWJkph1NQgMedAqszUNjy5vqOd+93kM
	qCiVVtXwGRYTvZHiSu6auj9lwLvhXlVbKgSiZkq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f03d6d306-c2ddb025-c88e-43ee-92d3-51409f9cffe5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6b569b9de55adb37b9fb1f6d8970244930a8acdc0344e50ffb64f53d7928c78
Date: Wed, 16 Feb 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645036884
