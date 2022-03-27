Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED897E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 17:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648403698;
	h=To:Subject:From:Message-Id:Date;
	bh=pnIobV6ruy48E/+bZeP3jgLF4kgvR2zq6nBlpjrBWOo=;
	b=jvF1CQKdEYoc3iM9oz8v4Ik3OvIwkWTzuInxeRSUXAb1sPTuQIxrTpMM8wJSeNG+
	7Bp2+cNq2d4SngX+ugebzGTfr/DKDHok1olp/NFDcVqYnKGjS10k3ClUR/yJwqu4wmp
	t0YV6Sn5qtQ9Zgc1m1Xk6VNnQc/mu/hpamzbCksU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648403698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pnIobV6ruy48E/+bZeP3jgLF4kgvR2zq6nBlpjrBWOo=;
	b=Xpdkw4ICTV1Pzy5549YJ9kvUlU7STlTVYorBySjXgR/ucJlrCKd6mjTepmKXNTRn
	rkyCA/+kDOEJJ/9BF/K4otmXjskTFdIMBnAqaoALJuX7aHP2b65zCTfte7AG0tdDHzc
	ygI7ltOzU8W/eXFBDKC0G/bVfSppTW3nNecc77mo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcc8452b1-e903ec64-dd53-477e-a287-be47c6a6a659-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d2ea94aaaaf9d21f71948f990878361d94b3f54aa3b55111b1ccde8633a4bdf
Date: Sun, 27 Mar 2022 17:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648403698
