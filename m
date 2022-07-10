Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB34A139A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 13:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657459612;
	h=To:Subject:From:Message-Id:Date;
	bh=K3/A/Ih2uMqY5d1TR/ixAz9zm9ow03u9wBndvRWoYqw=;
	b=O9/1y1yTd/aU+TV+NPO5W/7SiGBtT8C+y1rXPjvrxJIkh/Kft0CGz/Rq1xgxGsQW
	fwynBydF4PpOVe0DUCovapauuZQuDDHn1WFhAgdDZGYIMynq2hpw7s2TjG0DdDmMyz5
	WA4Oy/55KyLjEtqn89XuqY6ifua42yPuwMgAO8vo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657459612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K3/A/Ih2uMqY5d1TR/ixAz9zm9ow03u9wBndvRWoYqw=;
	b=UknxFzMqFfMO4BvlGy07SKez11DuP3gixRlyzGJujp6ZBOdvsdT6jaUa4/Do0fxG
	efXuQvxZwQrQ1sWsZpVsSp4iFEVXnpbxLB03oMh/zPilI+qc408UBeQffQEObOHRoHv
	Zd0Arqgtn97paugE9gTNotUXG8FHGpQlQ6YE+LE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e84a9ab1-28cd6036-d69c-44da-8e60-a097f9ef442d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f92d735dcd901c446063c01d45cb00654df0c3749b3c82b1b7cf13bc86e70330
Date: Sun, 10 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657459612
