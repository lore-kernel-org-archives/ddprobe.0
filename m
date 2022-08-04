Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 874BF6AA2
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659655852;
	h=To:Subject:From:Message-Id:Date;
	bh=EB7l9QcnSoquOWAkicYtitdn/QKxDSs8LwTHTSZeBQ8=;
	b=LKK4WtTh1OOJO4KqETywgeaLOkLzwO14c9OOlOzEwMlaBWQA8fWyvXqAvqFjkngz
	c/8ub9HV7+PnJKSXHmMYNLIdKqZp/b0eZ5c9CsgMzVtfKNWS+8m0FXJ/sxe5K2yXXCh
	EIWezlT+AlT0pWrqvvvuYuZ7f0AiV1YJWFSheVwM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659655852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EB7l9QcnSoquOWAkicYtitdn/QKxDSs8LwTHTSZeBQ8=;
	b=X+tkMK9QNFKXJqLzeoi9dqos0Ky4MTVrtioZhVxrazbj36i7rxv6XHb/golmtNxC
	ouhzZMWWCKt+4BfAXQtt1IXoFoXCd4qDJFf/tqLo+Azc1hvKft3YZqf+WRUKgmIaIA1
	1/Fxyb4kUSeXYf7c6y3QXZTREXOJWPvFGp/RwLA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826b32923b-f35fac25-15fc-4483-a529-d66602f10849-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2b8e6efa55981145885fbf4e468d6627d948f0636e124a5d28dde2a4799251f
Date: Thu, 4 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659655852
