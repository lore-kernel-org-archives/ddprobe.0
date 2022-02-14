Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D88EB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644882984;
	h=To:Subject:From:Message-Id:Date;
	bh=6un4rPAS8di0ZD9vQQCDzkaA+4BNtbbRONRbz8jnOuU=;
	b=VxYH0Qdbs3XE2RiaGABh1aC/EHHGE2L65JUC87wfyG9k5s3ESWYIQW+UZFzSsKxz
	HPGJ/9KElT50C97iqonIg/BRse6VD28BNzpBoO7OLqzd2cliahVAZCdoVnhaS4HfIdr
	bNxLH1SjY+C0UuezYEf4khj4a1SP9EYv4NCLdiQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644882984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6un4rPAS8di0ZD9vQQCDzkaA+4BNtbbRONRbz8jnOuU=;
	b=CWaPo/89qMHzwGaIU09YbCZ238/dbNC87f2ZhFJRPokwzqioMBEjfX5gNizUuTzu
	fVkbdCqlgatezocK+cCfEJi8cxj008LdVEvT7ApExhVNMhJHUdcBaw4s9nQpRLKmiqJ
	Uz1/80MJOvjwCjDcsUKdVpH5e4OFu9Be7J6vB+mc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efaaa7f4e-d088427a-9c1e-49d3-958b-48bb2efc5963-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2223e25a106867c40b95d73791ef07ffc405bc4c18c39550d88e83f69104f781
Date: Mon, 14 Feb 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644882984
