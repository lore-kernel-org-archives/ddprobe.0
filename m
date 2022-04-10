Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112B310E6
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 21:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649625298;
	h=To:Subject:From:Message-Id:Date;
	bh=LXtjkq3wGYP1TyVI1RuRj6uf/AT1MeFwRwMlvCXbrE8=;
	b=kyKFEt5RILGV2MoQiR4wfZw4Kx9aJw400alkagPLW8/o29djHzxgrGGfGYrHJSjf
	6oNEf1dwYc+VOfeDNHZM5uAiMFZ/RZwv2bkj4NdJ1c1f7lDhT7uDy7ZHHB2PDg+oNe7
	xOkfg/2klHIP4MioFo9iXqX/GD3JoGcztaWg2EOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649625298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LXtjkq3wGYP1TyVI1RuRj6uf/AT1MeFwRwMlvCXbrE8=;
	b=HX6fXjcibQ5fYQ3zxAAHY6kM6VE7OateSBeL5m6N+BB0BovwmAXKFPubybjjCwQe
	6BXxY35w9n41yiRnBogAL2vXbp2TSChmAwlbsHx+vipRykF5H9w+/sDV1zFRHxkKnUD
	wem+8Xw//Gr+L8hhZBH9Ai4nOU+Ntjid36PGNWAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801554753c-aef91a6e-02d0-4ff4-9a4a-ee6cdd7e19b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 921cc6b6e23e22a42274555809a73c165d8531b9848b0ad02da2093b1a2f3ef3
Date: Sun, 10 Apr 2022 21:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649625298
