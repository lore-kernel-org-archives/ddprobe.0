Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B29E7F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 01:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655431079;
	h=To:Subject:From:Message-Id:Date;
	bh=vyJdjeLbpnunDPyqvNlTDxNVyglt+sbfKSMUq0ZA0ts=;
	b=cNIx4dEMAQtdAii1c3liBaAnZJKFA1+/ZUTT4avzuQuhHwC6YVB6JFLtNDuulTUY
	RFB2KPUmQOq0beN/dUg10anMIAzR8Wvvb7p/GmHyCFVI1IPch+faT3eMdLY0rhoVnNQ
	BVaFuzUTt7CZFU3nuUlGao68tS6BQoGMjT9QUjaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655431079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vyJdjeLbpnunDPyqvNlTDxNVyglt+sbfKSMUq0ZA0ts=;
	b=JEEG4cTr9l6NhS8fo1cPRkzvO5J89t1Wt0WvRRlnw5Rm9NwY5E0LdIOeAfnvPtNY
	bwGD7EHz5Rr8P7ZrQht+v1jw//C8UfBqR4kMzTDXGs4RL9WbOzxD9kFv6ba2Aky7A02
	1yGzm+qJS9tI+rfnDz7hbg9dmYRaNINdM3LytC5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816f61a560-a9a6e6de-2436-4114-afb1-23542412983e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a0bfb794797bdfa490623bd54cb9e4b90da5e7744cb71edb2c7a5def21299dd
Date: Fri, 17 Jun 2022 01:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655431079
