Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7787A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646890884;
	h=To:Subject:From:Message-Id:Date;
	bh=cr3kIotSBubJ3JGHFJA/8jwxeOv5kKu/NFFV1om5VQ0=;
	b=Sm2uQ44pmSDWBWkN9olTNABeSiVMzwsqEy9CcQyR+TbGeroSWXQtyrCNMkC4G8Ev
	Bz5q2y8blEcLyjxfiMYWvTJKlcb77UqTA5iAqAs7UnQ50aQuNXN6a26m1pnboA5ftaB
	Jrz2Iyt0GrZxJeryP/iIrcoynCh375+6ct+LT51U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646890884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cr3kIotSBubJ3JGHFJA/8jwxeOv5kKu/NFFV1om5VQ0=;
	b=Ev8DExURJPTnbBnBvZo1k3tzUVG5AfjMEEBetere44SPv8Uoh/WabAphUxwuxrc0
	ZmaHoOrb4asRJQPgeMjKvLcvM8rQs2MEK8QloaeqIR6HzWVwBUXi6HzD2+M0CwKI4P3
	R/7UcTAAeO8BOnOmJ6mz53YMmNOiOnJs12RMEtuI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72589e9f-7339ea7d-8a8f-4d70-8548-49a54e2ae71f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b974c7281c55bb1b8c90a3ebf4bfc9f9c2609a9c842f1dde8388b2fd8d51f4b
Date: Thu, 10 Mar 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646890884
