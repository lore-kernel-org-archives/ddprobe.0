Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8AA97A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 08:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648973878;
	h=To:Subject:From:Message-Id:Date;
	bh=+Tt8TSu/sMf1G9dM20/M7r1DzTqVLlUq9ERR92JXsew=;
	b=absCfbS/66hmp8eJd9tSynsTUq5fGEnsFnfWfj1BZDY7BB/y1kLBCgaNP+agXpcs
	vDDNtzaa8bC5N/I/al3du+fepPFUNsBRqjFlFVWlsr7l1ZCyZGrZD4V2eypvsCUUqyJ
	8+HSNtY0/867IgjPRFhiYkIryPIPfBgpN9AvUX5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648973878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Tt8TSu/sMf1G9dM20/M7r1DzTqVLlUq9ERR92JXsew=;
	b=N4XbF5SZAFgIKEVkD2frIzOYcpanGRs08AAgx4gO0lu6hh/auzo5mXk8/IMxeHgJ
	S67sXVLgr6RdChDrAURq1EVzohi5qp50+ohjBLQUbwkH9kpmo2OoFXRw7mwUsgbA0+a
	dyYH9xeSPLKKxHzIBF2oMx2Eo8cQNMnDioAhKVgY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fee80940a-7bc891c6-b27a-49cf-87d1-6b7e84f9789c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 756e7aef183963c4aec5325f642a6d828869868925b27c57e09710acd106e111
Date: Sun, 3 Apr 2022 08:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648973878
