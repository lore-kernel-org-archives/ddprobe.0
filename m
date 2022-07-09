Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FB07A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657345012;
	h=To:Subject:From:Message-Id:Date;
	bh=Zq4Pzo810cUgab6uNunrGAomiA6T9aYV4rGtrZNkDLM=;
	b=FYaoHDKhCaXJb3tqUrkwcgovUt/4ZWXrpTJ2zHn1o43dVOu+5K8HYPKnZ4AS4hIO
	VicsP5iPi5S8zoG/nfPVuAOcjzFJ3WuWC1PGAAFnRTeE43f26N7LEB+7OhbMC/BBQ34
	NU6kdFOARMQ/IWWdL9iskeUeEt40pZDaThkZNvXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657345012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zq4Pzo810cUgab6uNunrGAomiA6T9aYV4rGtrZNkDLM=;
	b=fL06Limj2x3mgXsUWfIICb3e17L+mgSWQfeS0Vu+8Hwlov020Fux7ZvYW2OHTR0d
	iTYxxajoiYpfhAaRIdnOT7sU1UHl+e5sWnILOFWGgsZ3MN+OsCu94468agXU+9O08yF
	BVQz2PHeOE8J0TcKp03j3ID6P4QR+lavLW7Mb4DM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e175f2f2-0c79ce82-dfa1-4cd8-82e8-062ab7501be1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 401decb87df8cac891f830ade5e59b2cba8b785d1e574bb5f025f26c573adeaf
Date: Sat, 9 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657345012
