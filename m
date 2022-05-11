Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B87915B9
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 06:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652251799;
	h=To:Subject:From:Message-Id:Date;
	bh=mSKwGOvZtDnFyzkf0LfsWR7zPgh7l/1kqm+b96WgSR0=;
	b=EINJG5CMNHs0yZLNDHuHfwIXio+C34+obdpzZRpC4cO+OQgMWC2fC6TGCNyv5Em8
	hOE2r5Qajg6RHOhDCY506l9u9bHIeavQ1L3TgFAhPPxbl4ky27g2gC50TwQKrFg75gC
	BalFquPOiw8KNcXgOmQKIAh1aoQeNodLjkTp06Xg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652251799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mSKwGOvZtDnFyzkf0LfsWR7zPgh7l/1kqm+b96WgSR0=;
	b=frsno9nDhOS7vCXWPeySI4NwJeYHP/ejBzQuocVNhdaRr2pvC53zauK71VRmOtPB
	uUtxmoPF6J+OfUjFGlO/nZbewzGvBiBUVV40lIGFcBTy/waI9vTlIkTqZkEuIIbvnln
	ONf2/Q3PXh1FIPQJETdzKcFikhf9e95chPVusawI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b1e1aee8-983202c0-046c-40af-b15f-1aba95d74a1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f67923ef4a1e8b8af7f93fdb84c880f81f116f198a03a1f22a90a88b1da40d05
Date: Wed, 11 May 2022 06:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652251799
