Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821D5A4D
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646391685;
	h=To:Subject:From:Message-Id:Date;
	bh=5NDs3M9vO1HV2wzss5M5xohQdZJsAJF86YrBFvEH1pY=;
	b=AZeLnrSQTR66Xw17YadxFneU3alyLcfPnerkXtHc3LcD9HM3zSn0PuIMa4azGLQ1
	M9yDLlXhGKvAmFkF8r2jh7CBSkrOzycPGUoXSAB42zGiIxInk1NFgdp6QgE2cJbX5EO
	1mfkpqyr7pBTbq8Ttj0eSFXmuwN2lG0EPuSeIaxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646391685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5NDs3M9vO1HV2wzss5M5xohQdZJsAJF86YrBFvEH1pY=;
	b=ISxDcZPuF1lz3F96gmXdXSrLh6p6nhXIyTjx3D2JRIyxm0Vm3Pefc/OVx+C0HWa4
	w7jZZpk3dbRbrRPavnCq8/yBI4hgMxJ+csD+rKV/3glTS1MnJo3lp+4djkEyWSqPQ9V
	taG5m3Eaj9OpOfD3AkoyWRs99R5LcpGET26piAuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54976ea5-90f2c87d-f7f0-45ff-aa9f-f5d525375ca1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a17c88e7595210cc2f1e03d75bfcb9e71372c133b1a1a502f23834c9270815f6
Date: Fri, 4 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646391684
