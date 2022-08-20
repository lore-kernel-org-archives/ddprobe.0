Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C6E6132
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660975852;
	h=To:Subject:From:Message-Id:Date;
	bh=7GKKsWvx1WTrbWiXy6lGG1qOlL/aGEiDNtF9fwDwyEM=;
	b=dKoahi44LObwd0CYAOi8/mzPvxS+dSnMeSNLkiiyHES+bJDIA1DfWIt7HP2pKfPa
	YtGOuSv8e3Wu56ZSFm6Sy+uQ5Pc3QDq300Q5Th/QjiEK+AJCZ0T/FEVPPF+PDVWqFGe
	/B6K3JPelYEACVR6D58Tdg5caBgX+8Fql6K3yli4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660975852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7GKKsWvx1WTrbWiXy6lGG1qOlL/aGEiDNtF9fwDwyEM=;
	b=R3P/HDklR2/As7cTo6E7PwJRs4eLmc0ussqHORKLqMX3fMLm5SSLRvx1kj3BvDOs
	cXrl601bq0V7xgYpoAu0O1ZB8h9Z62PUppFKlWjqt2pyFcexvCoUuzF+UXD0sOet2Wp
	iddQnRfPIW8FOWxcYPO7yNHKHerI1OmpVCZZrJKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b9e02c0b-18259876-d3ca-4e53-ba5d-5c990dde9ea6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc98a037ccbdf7a53a41d9b74eaa15f6d1de02f23fd6cefe60f65acc1e0dc3ec
Date: Sat, 20 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660975852
