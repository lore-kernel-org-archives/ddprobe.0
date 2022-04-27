Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705DE2F4D
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 20:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651092178;
	h=To:Subject:From:Message-Id:Date;
	bh=JWFqIdOVMeJzXIp0uhuB14PgCdBKXyCKLbsbM4EQoIU=;
	b=UqEd9KiPNTCDzR952DHDiI/FoZvsrxZK2orQ5uui1KwdSf+qZAp64OSC3gG4i+BX
	xSzW1Oph9AXxLGub55rbbdr1m5+dgSUBqkwm+8JGcfs9+JfSDmxXmAUruIyS770El0r
	d7HkQQ2i6kv5b3lOglIUJ3CzHaKuIaFYN89VNe5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651092178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JWFqIdOVMeJzXIp0uhuB14PgCdBKXyCKLbsbM4EQoIU=;
	b=e7vdtSHgvyq8qhHJDPgy0ejdgP7mORMcpgXDB84fu3S2FHFcGCMz8sP25mzl0M7o
	V55wdwdqLP227eOtBWww2DY5b5mtDO79qUj4YLd4+STU31heQbnRH68VB+eZ6VCgkao
	UP8/BdZnc0QE3AeHOXwnAbSDWK320IAb7fhi/hvM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806cc34559-90a286b9-a7e0-40df-9112-8d694c5c1782-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a33413e25f9c585661e791bd50a5e480bf9594667583a9dfbc744deec91e22b8
Date: Wed, 27 Apr 2022 20:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651092178
