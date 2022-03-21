Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8810936F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647904885;
	h=To:Subject:From:Message-Id:Date;
	bh=/MQB/VCNYd7G/l8CQhUxah3FGhWtyzXzCZBAHsqNaEk=;
	b=SIxrrRwgmXMMoR+btILpDAFUU4YrjKT3uH0L6I2n+z/10QtjtUaM/f28sNnqkeTK
	SoMe5GDPkKWcSAYXNtX0IpzwIP2zawSnifbBP1+GpLQS07HkbRCiMXj6enkyQT5ZQ/t
	4rXcJBsPTYyzqE6/u9Uglo0i36VNcsM8F98SvSL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647904885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/MQB/VCNYd7G/l8CQhUxah3FGhWtyzXzCZBAHsqNaEk=;
	b=M2v9kh5abC3MmEDCk6p1OPshepjn2ZsbP25vMsB4jBfi8CnzwyqaqsT8eAB7Ak6X
	J0+u1SSN3Kb/wT2mkmJT5RdlZPC8jmAJoCJrcWh1U3Mv04oU5FZyi5ELWAH94bhXaE1
	M1kDqL3Gk/FFO/BcQGBD+4zW2Y6xxmYo7hc99a7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faec9082d-32785d6a-6481-447d-b1c1-654925c8b654-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec38db50dd0883e5779d2e7dd76703063203b91f178c90620965e65fa7719f70
Date: Mon, 21 Mar 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647904884
