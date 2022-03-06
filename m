Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CD07C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646553385;
	h=To:Subject:From:Message-Id:Date;
	bh=WRPBOds8ioRqqpcCje5JrucanDz8hBkfSm6DOJSsCn0=;
	b=XS2NYQDw1GVrCdy7qAWfXtGwCK9NiqaBhlsQqR6RZeNcPRBn4MlR7yL26l8r7N9z
	NA4vaCSAn5uOwQJ7jyfY3NldRbPi6JqpAu/v29nR/9F74pgb8ljYPeS5OpwbWoeB4lv
	FP8MkKJ/wg1PmLIXVjqJYhCjX1L6Ih9nv8dBLOB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646553385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WRPBOds8ioRqqpcCje5JrucanDz8hBkfSm6DOJSsCn0=;
	b=d0qi0wKPWY85q2a2p2VqNy0nFCe7LBM9t8QoLF5FM+QhEpPk0aVLrubfDa52q8Uf
	2PN9PWrN/DpwdVh2JdDapCYQlG20yLTpQjYCYAvnik2ykKlNkpspKt8+FpG1Pcp9+qd
	TEji/HR06by8U5bUNPKRs8Zgdt1UZATF4RRb7tzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e3ac731-720a7706-f9f2-4ab4-8b3e-0780fd5d3a13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c2315b06f23843d17757eaceba3962850d50a5449a78ac7073509b6d3030fc7
Date: Sun, 6 Mar 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646553384
