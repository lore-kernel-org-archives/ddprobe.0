Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6060B2F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645183584;
	h=To:Subject:From:Message-Id:Date;
	bh=xpEjf+coCt9xHmEot22RyihYa58TxNUUf13T0YlVEII=;
	b=I9c8Jf7HJXX5uskt0w4cy3M6UziqCVSaFm/vF8y+WJvYR2Y0qSsEWdPj/YB4JGh3
	jkeFYC39sW6t3v7eT9dgx/wamxHg3nDdVSxw6J2QdivHRDXsntf2oQNw8cMvP3h1IXN
	gBbHdTp4xJ+6vI2g7NAjmSXGYzE8sTz/LD961cw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645183584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xpEjf+coCt9xHmEot22RyihYa58TxNUUf13T0YlVEII=;
	b=TdoOQkwj+DIDzj+6Z/oKWhlBaUDvDpTHm3qmQDM2mdYgElhB6jmkhsSC9GZupRtI
	XnuCPFx2wMDf/doMHv+HavoOMjHBtZJWO2EfIR29eDFnpBWo4/hHh95k4P2uGkb56yy
	WCW/KBmZ/pd8BBIankMPbAS18XeJrjm+1NrWIO04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c954a1f-bbb2f044-99db-4cd7-aee6-efd258cd80c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab9eb98c49892b5205792c63df02d84a1888883254642f0de170176502ac087c
Date: Fri, 18 Feb 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645183584
