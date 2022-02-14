Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1537E1
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 04:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644812405;
	h=To:Subject:From:Message-Id:Date;
	bh=SNLmpTE2+1/X6WvGDu39M909hlmNhoHW4RxPvZxEnao=;
	b=QqFvKPjlXq/lCKrShBRvRaaKFA8EwhpbTSAP3uvNuDL9q3ZFEWNIdoMhe0HjJOJ9
	4x3uUcGbuozP3e+MYV5XNP9NbNSViVFegCfHsyQaEbE3efKHCZZvdWDfJ4JjLN47CP2
	G3TeOaYVqV5bhC2hudJIkfzXyNocKamQKTXywVa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644812405;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SNLmpTE2+1/X6WvGDu39M909hlmNhoHW4RxPvZxEnao=;
	b=jR+QJ34uQ2XkZqGayAlDoTyrAYrby2OG8rpyBnsJPYaFm6YuF5mpZXaDvJh2sxYX
	C0vm0mkitzOhjNmpHldU8ZN+h1zKIFPxOF60NqRTa99e2aO1hiLkMJIf7IOKsul/6Kz
	/tuC9bGsObuOcIHOqsx702POL7O1oDqHnTkrhi8Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef6758ab0-5a69d388-2fda-4680-a8d1-a5fcf9bead98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b33bfee8a51af7cbb2bb681f9c455afa8367eff6c22bdc87e5c480c776e1951
Date: Mon, 14 Feb 2022 04:20:05 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644812405
