Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E50515AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647571884;
	h=To:Subject:From:Message-Id:Date;
	bh=IBOS+IdrDKFDgLWh2WSipChl57GK7nZxWPCG4PFRYfg=;
	b=lN86QC/JAqPYWC0d/oNKw2XyjZZBnp3h4m2+FHxv5g0aJCNxTAUaI8Gg4ateqT0H
	dNJ1MqDTFJLs3Y8Hpl48ICRHXe0tyGEifVyWpmCF+5DQaucPodU8JuIQWLG9t4Rvr1c
	nQrmmQ5wTAGvU7ZRPuJ/nmN6b4tNFn/cTbwyWLxE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647571884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IBOS+IdrDKFDgLWh2WSipChl57GK7nZxWPCG4PFRYfg=;
	b=FXgZfbFF2Lf0h87tNOrmvXJ/H4E/n9b4JWI2BP8n6/gVyCNncD2HPVv8TY+4CRnM
	jq5sfh29v4iktaH56zXw1hKcAGoNq9YBwgW/ca4ifY0OYeBJ7msKDB7bYXJMb7n3rm/
	tuIxOJVccARYcnYrWToJJwT3Xx7e5BAlIKpg5FJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9aefdaf0-bef188df-4093-487a-bd3e-7f9cc1879cd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99af80cf213742bfd8cef875a433905f11d4593c8aaca9a90da06251c2d449c0
Date: Fri, 18 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647571884
