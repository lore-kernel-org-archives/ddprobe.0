Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070D715A6
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 06:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649917378;
	h=To:Subject:From:Message-Id:Date;
	bh=TYXWkrSy5CllCLqSg7CNyQfKam6/yFbmWU6wzw81LGs=;
	b=meoMxmaDyszEtH0pWlr+VRnXWPbpKfGzTd5yH0f0L/zBoHCC5aIL4+Tvh7qNWO9j
	Sr+2VZSrTzOwd2ysKOyArgYi7SPpuGl42ahEw+3qJmBvWv8y/yiTcRVj4r1s78JPHYT
	PXOkmwl69Lr9U6O3SnZL+sTuPiW5R7JVSVsjYw2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649917378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TYXWkrSy5CllCLqSg7CNyQfKam6/yFbmWU6wzw81LGs=;
	b=K7MK+yttu3QkTNmIA/ZdlRh1VikuI2uUNMc3Vrs9EkW8LKTI9qV/JYfPPa7FWcvU
	Z5hpTID+I6Uf2gNNlgevD+zKcQ3orMqbwoLK+vTtl3ifvaYxUZ11uaK72/5+Cdtr25k
	Jqto7H9vZEwfVj0C/Y1lqXSoLgFuHjIlUUxmikfM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018026bd3ee6-228d150b-9be9-4509-b9c1-db88bd06fb43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4f134fbff22bc7e8adcf2ba8b6db9b18b613386bd67f07532ec7fd82a514ca3
Date: Thu, 14 Apr 2022 06:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649917378
