Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B319D7A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647582985;
	h=To:Subject:From:Message-Id:Date;
	bh=fpiRhRSeQmftXz9CJtpsort2NwPQsSo+UIqABEGKvXk=;
	b=jCMIFa4UKNx60sOso3FtTn8cvh39ZoQDA6w0UemkhULjAlywBBoUlxIzLrwSEme3
	3NtHLRvvvC8bgneESIZTZ4udobO30+7Yq0tqkhPzBlhQywBGAW73WcfAoEql+R+wovI
	2fk6BoSRSg9nFuOuKnHWScXcdCUWKqT7lFz0YLq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647582985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fpiRhRSeQmftXz9CJtpsort2NwPQsSo+UIqABEGKvXk=;
	b=WOcFqJsy2Ke+PCR9Fxyu9rHMk21RoJ0kO/esOgfy08AdvOubo8OC4Qs4NimpIlLn
	gL1+v4O66u/JWcVr0NDwP+v0nV4d5iGtjp9pveOEqBDN7xIfzu1xEDfsS5wXIU0G0nA
	GnM1Dnttlav0bXB2FzRNz4R1lMe5+YarWJE5LhTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b993a6b-2acecb9f-1cba-497e-b28a-aa23795bf0cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 902a0472825c92b18697fd6959e59677a6d8d2b6da9d166db7135cce3f8ebadb
Date: Fri, 18 Mar 2022 05:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647582984
