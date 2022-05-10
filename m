Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3982C80
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 19:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652212619;
	h=To:Subject:From:Message-Id:Date;
	bh=K8IHO560JGshMGp/MRiU9D8R0rTboaMc8jL0GVX9t3E=;
	b=fZHCjlnDN1hHR+sE4XhYBc2Vf1g1wMmT/s0YYkWW8+1pi3bxgw5mft3mgqGTAR/d
	nPhzojzupxvg34bSvcpDTgWxDyjLsEIUvl5Uwrzzv5TPAYVFcUyzFUA4/kWxaD3kJML
	zxc9v045HanP48h0Hu3G8z+B4ObSJODaf5zqP+hM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652212619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K8IHO560JGshMGp/MRiU9D8R0rTboaMc8jL0GVX9t3E=;
	b=S2TN/5ygu+hH3zBM8eZW7K3Ohe6vgX6TadGBlZhw5A6pMSduy0RhNQtaQ7owGA+l
	FqULs29lfh8GCz8K/OPN4+txuFaFZADa9pmuPjlNZrwFUrTRVOdtK5kT3s1sUGT3BcF
	8gNnP4oIgl88wLOVUF0+V2BQ238wV9+IAON7rsB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af8bd88a-f3145563-d735-4408-ac20-84488de6ff2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb5d2d76705054a96827222789bc206dbe8c4527726695a593cfbfbb38872957
Date: Tue, 10 May 2022 19:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652212619
