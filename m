Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF8C161
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645353384;
	h=To:Subject:From:Message-Id:Date;
	bh=VT8RH9cyOrPRs4NVJG3lmaZcc5DbQBc0O8pIRfYBRnk=;
	b=fhbYbSHcXYLWu/Dow37Ah4iaaq7RmYH/ZEBStJuW3yskUXWWAI0wtBvlhoTzbroj
	8qqjeuADis4AE3r8tbQJw2zcEpuxiQhTMpxp8oZWFrFnNfFr7WVZeq1Uj8rwx4vhgg2
	30JGEKKKn1XDSB3xD8XwPp6G44bfps507nIoY6Kw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645353384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VT8RH9cyOrPRs4NVJG3lmaZcc5DbQBc0O8pIRfYBRnk=;
	b=AvRONK7lOhFjtQBCkrvbrs/eGXqqb4FLO0bMRVOA44S5snHX4yK8OnX/bYNwes8c
	priCyLCaHEBpU/hozBvUr9uw5aNtr2I2pMOrxe3WKaJloAnw91WVgLuvCYYQVqZZahM
	OydCpIvkfQM+TDyNPTSnVKPBzDcQCe0KLD9BpEL4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16b43b4a-7148f282-3971-4b16-83d4-a40ae4508feb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56df45156d43ec1ef790543225f4bf8b795df059e596ce89b3430c13d86fe653
Date: Sun, 20 Feb 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645353384
