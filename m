Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AC328EB
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 14:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651414978;
	h=To:Subject:From:Message-Id:Date;
	bh=iljKsXV0sRw7p12FJlzuPd77osNPcRhioqArhg8rYgM=;
	b=LKWrERgprOAp4Qz99kjFRL76pQhN0c4oph5EoebRAo53YQahRt3KH0zJHWovvv/S
	YQ8qWi/50VTyb9b02dWCzdw9WO8Vsm5BZhBsQQrnMNM5FyLw/X52Y9q3gGnazH6/1Rf
	A9PaF7QG+t1QGbOWqHPvXnsIe0Wo1wuKI8639eAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651414978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iljKsXV0sRw7p12FJlzuPd77osNPcRhioqArhg8rYgM=;
	b=BVaE3uTiqWqSZOK0sVeUWbCP86PfpybrRaHtMjRmYYPr8+AW8KoswsgR8yf2+hh4
	qZKu7DcCgHSj9CZjnw57n1HVyiogTTOAW5fkK1Wflplm3C2sWxJHm/BpEQbp4iH81r8
	VtNbIgFpT17tBVXbW/FlzRgyJj8sQ3XfUAmZs2HA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808000cf5a-59d1cd71-5d6d-47b6-a7b2-e4a98bc3f22b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28521155fb67ee7fd0b366df35f53ffe1812bcedd07095227b371190ede20752
Date: Sun, 1 May 2022 14:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651414978
