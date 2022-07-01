Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3619B3C14
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656694012;
	h=To:Subject:From:Message-Id:Date;
	bh=IcRsAaC5jbcXTf2atQXrPdyYbIxWvDQrcG0bpMByPdg=;
	b=ZcXel9JnbaSvkraRjeaQnsHZyyIPNmASaaf5gp3FiepYcviENcUCqXRoSg2W2tFj
	0pHhKmcc+YpIL+YBXgs8s1GJo5eA4A6hTuK9fBt+EvLeEOz1ckOnCWJQXZAB/dF8iGm
	XB7HihYm1K8c2E/0hekRGZstr8TQduuzzSr0BjDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656694012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IcRsAaC5jbcXTf2atQXrPdyYbIxWvDQrcG0bpMByPdg=;
	b=JSqEt2TECFCG+zY6f7tvS1rtdcvl/g3NUjd58i+LZK4ukFEmzX45aA3hIJvas9k/
	4DyetRczSFWpON2OQKbnhG9sv5khxKcN8YyWti8/hJ1HoD7jXf45fAPGgQK+aMAYooO
	7Iaab1uiy3ByFAS6uHFZLfvHaugRO8Kwe+Wo7EGQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181baa87988-cfd556dd-f41e-4630-a6f3-cd4ef7a1709e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 783ab5736d35f06121149295004dad552f88f1120c60083f7b641769750ba178
Date: Fri, 1 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656694012
