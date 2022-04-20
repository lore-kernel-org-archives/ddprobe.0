Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87D27A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 22:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650493258;
	h=To:Subject:From:Message-Id:Date;
	bh=BVLoAPe8u0BEKq4vjRIP+QMtXP5Hv+GBHymX5aFtRjY=;
	b=Iwe78Fjs9VWhusg7oVFTzBxZYH0AY2sb7T/jn7K6jXXYwEMFiIkpw7ATtMR5/pP3
	q6sJRI8hqc4cVJg351WiMdwJK3z0YOoa1zEXKzKIarSl66e9E6zqDKjcRyrgaqPC+57
	rtEAsbwKOcpwOcPeuDHa2u6GLQ4qM0lNEKzyVvYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650493258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BVLoAPe8u0BEKq4vjRIP+QMtXP5Hv+GBHymX5aFtRjY=;
	b=HfDDWMHiY/bUieORboicYF9BMS3eCdnUgX61OVkdNbmLF5XMQnsDz/m0e0+aHKGf
	GbraCCu5RpKftSZt17qd7flfYnsCb1NjczNvECNb5zkoZV7242pKuGO6g6CPZXNZvMk
	wrppMRpIvdXx+w96C6/87fdvbnNaf+crMMLPvv7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180491079ee-ee60c1f4-5571-4526-ba2c-5681eb959264-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c282d111a779689c5341d01e3c97a7aac441c197fbe7e388b013e8045e63be90
Date: Wed, 20 Apr 2022 22:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650493258
