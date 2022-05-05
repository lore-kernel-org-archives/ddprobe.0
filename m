Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845AF2CA4
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 20:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651783439;
	h=To:Subject:From:Message-Id:Date;
	bh=tAcf5jiIRP5qTxyqbOJdgDd4mM5raZM407hOTIM2n2k=;
	b=hxxIj/OTtTZoZpl9Hzb6Yvne3/xREjNbG5Po6nkMD6OB4wWHo9nDA8mk8ajQE6MW
	g9HGFL3KfPKb+CfIWESI/Gbwn8qOum074CoK9Rc6L/jAgTTmkQHeQooKphygUO9GEVH
	X/gjH7H+eIM3SQVuukqR4jD8L3y7x8uocbm+3W6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651783439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tAcf5jiIRP5qTxyqbOJdgDd4mM5raZM407hOTIM2n2k=;
	b=HfiGg6TeJmyHfSEkOlmaZySPrvpqcu2YzkE5pNp4nqEck0Cs2d6HdC/ouqRPUyRM
	fFMORrDss14wOB9t/Pkvhnvcgy1mn9CrwMhFDZ0yMLsbd61dpDuUJY3o9MRRwwT9h7Z
	+/RdPWlBNVSQfVcdrOEq/v7K1zMrIz1QR8/4kn3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018095f70fa6-f1e53cf7-56db-4937-8ba4-90c1229f5765-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60d271e80db2e29862094ef7d29fe24d25fbf80b14f42a4ed3f90b3e77a81c98
Date: Thu, 5 May 2022 20:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651783438
