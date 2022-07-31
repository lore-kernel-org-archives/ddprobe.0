Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71BF3C1C
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659284453;
	h=To:Subject:From:Message-Id:Date;
	bh=nIJTy0JQqSnQu+aeuCpCcJVa8i8QSeoyPOWHRAo5v8o=;
	b=OCRA0CJHKGZH9QIQxXVU8uILwvoejIttszsmSkmWgJwiNYf0U97u5DfWRjtZqWj1
	l348X/2HatYbWHFKMsw5h6FPAxa8jG4F74VelSLW1fMakpR9da71BH93j1srjDx+VlJ
	/p1F3K+D9988QzXHWuVd+v40zI4R2ubhdQTugEAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659284453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nIJTy0JQqSnQu+aeuCpCcJVa8i8QSeoyPOWHRAo5v8o=;
	b=KoE1p4BBdyvbna+OPhnfKTVWjLaNWLklgns4GRqoC1lhOC5TYaQpN3LkkKBEsp/Q
	ZolMLSZWAPyF6nvCpNaAh97ocHO3RQIPzda36nA82Guu8fSDk423h4JYCveqfs4roND
	PzbehYsy4MeGpcRTZY/q23O387ixFZ8pWbl1gK5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182550f74d4-28ab1c9a-a3be-43ea-8283-45fc077b4426-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3db4d494ec7aab415ae9d2134908670caa38b0ebc2877d4ae603ec785d93c0e
Date: Sun, 31 Jul 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659284452
