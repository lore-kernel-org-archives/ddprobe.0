Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F75366
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 01:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648604398;
	h=To:Subject:From:Message-Id:Date;
	bh=15hT+gHpVW4Y0/zqoblYxeXQhE3uJy7EC2ePCrclskU=;
	b=IAybJ8mGGaQ+iZ7lGjKIavCrKl02uTkAHF14rCcgCamors669p3n8VWyqfzHFPYO
	pZfuX55nWXITU4q/dE07Lyn696N5JVlGTqELQH1+lIblp8FKRLWYHPVKq+FJgMf67Mo
	cmYT12R+xGMUR0jhAY+TRxsQ7utNytSAlZJRkD2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648604398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=15hT+gHpVW4Y0/zqoblYxeXQhE3uJy7EC2ePCrclskU=;
	b=GvoppG3BsjWsyPv3EAIF+KKKXnejodNQfNtBxocPk9sUIHpCon1m95w+NNt/vAYa
	g8gly6/4n1LPeMSE6yk3Bu7CgIpktN7BR3eBKBT6GU/v/Q4RuvO4S6uaQLQ/jCSZZSd
	jLbcvzwaSQh8XB3QuTijrv1Uux3qE5we+HiRuXco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd87ac317-5d7dcbd9-f3aa-47aa-a5ab-eecea9f4337b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f38dc7657e104a00980518a5743ed00b6cb13386fadf22db2f59650b406b91e
Date: Wed, 30 Mar 2022 01:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648604398
