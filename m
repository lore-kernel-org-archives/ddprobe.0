Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016F623B7
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 05:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652159279;
	h=To:Subject:From:Message-Id:Date;
	bh=UeEvTTQHxPPBrzeyqZA6Sb0fjOw5ZRtK9r8/DlRtWH4=;
	b=NmPfmwvlPA/eIRF64Fyh6myRqmQleV9km3q7yaptc2XupXvKn0AXMOrjJy1JsxbE
	wAzaihB/pehvLdUmZeRg4ZH3TM14aipmduiRmIGRoe+Cwc6dkjjrXZEdvoggS1L+yb8
	otcAjiic/0GweF/3BGtpArczlGFF0kn2UnpcuPoM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652159279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UeEvTTQHxPPBrzeyqZA6Sb0fjOw5ZRtK9r8/DlRtWH4=;
	b=WtaQzCOzrDt26eHRceiqU/pDUou+PgVxQYciiIrId5vvQg5pdg7FGn3oSlHFKmLi
	aiJ7Wp/TfxdSevki7yq8dd3quIW3XfBAlZ/XdOR0/syGqR2ilTGvh+LRtdidxaKvry0
	e1TNVmx7kPWkcO7hWHfPmpsyhADoi65LVzXf3Nt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ac5df0c3-d11d2358-3628-4d09-9cd6-6d240ac6396e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb9e012d6590fb195b21e42984e34a710ee5b45027b96a136dfcf445521b5f4e
Date: Tue, 10 May 2022 05:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652159279
