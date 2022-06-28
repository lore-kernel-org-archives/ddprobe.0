Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193DF3C05
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656430012;
	h=To:Subject:From:Message-Id:Date;
	bh=PXzty1Z4diZHh/WPgWZH2AeGpFvjmI9ci3F5z0aw79Q=;
	b=VmGQcoOY4u+UhyZ1nxwOAtoa52mcF5oETQ2vlPxT2BtpNZK6gY7cOu0RPrJGxQKy
	Cz+D4z5jkP4pbqXX86SMoBVPWjAoii2QZM41NJpY3fwuPVSS64d/f5NZ5VIsmhZCr2m
	ekUr18p7q7kYTTHV3FMVegxaEAGvl40yJrDG9KIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656430012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PXzty1Z4diZHh/WPgWZH2AeGpFvjmI9ci3F5z0aw79Q=;
	b=NKOrg24rlqVQuiB2FyuvgOYOvtpORdzasm5/qj7FrsEu8E4xWZHYOMNh4SlJwIdT
	qCzqYTlDDCYb7HN14VmUn8Ljdvew/JwXuvz7nISDc7CAgNTC+w+4cFClQ5TfSyUU8Wo
	ONj3i8SrL+Mpddta8OMGGUUzWC1J2rDVquJuJcIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aaec27b5-762aa306-e1e5-4f3b-afb3-e9151f5e7f1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ea7f54aceb361cadd52ff5ecd7804fbb8a50971e53a28c44ffdb1fe9faabe26
Date: Tue, 28 Jun 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656430012
