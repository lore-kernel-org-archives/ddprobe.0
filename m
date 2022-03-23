Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E521B6C
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 20:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648068778;
	h=To:Subject:From:Message-Id:Date;
	bh=JCz0QPFh/hr0EIPNJ7Gdnkgt4qTNcTR1eOJGcB0/qM4=;
	b=iXhXfTIV8svhyCAQHrBthlxhw7FlpmYQ1lghOtjUDklxpV6KNj+ygP6qBCIf7TxS
	hyIV+KTAwl+SKPKO4tzx0vCd7bxAMt22wkj38eti8XzI8c3xWk/ysbie5iAAtEgKKX/
	GfeCu7vTGTUAoyHdOOsquhijQboDn+ecn8VfU984=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648068778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JCz0QPFh/hr0EIPNJ7Gdnkgt4qTNcTR1eOJGcB0/qM4=;
	b=MpOo3wTb/q8NU53/xS1uqtJEjmI1pFb+fFH2bvG73vWayIF4iEOQEBm6EF56S+Jh
	/v7T8A/oyro43MWBnnVBs+Q1isHbbAQGR7qA3prBHcoNzF4OTMWdlOpZ8P4Y2RSoeKw
	VLStDpctH4nOpfHG+QmGuL+P6tnYAjbGl4KWBAaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb88dd8da-05e7222b-6213-4049-873c-e2cb4065dd31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27f00e53b6d2bd6ae933918f35cfad0f4a9b45755f0ed9e993ca55b6526550bf
Date: Wed, 23 Mar 2022 20:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648068778
