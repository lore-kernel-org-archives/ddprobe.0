Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE791867
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660619453;
	h=To:Subject:From:Message-Id:Date;
	bh=Bnm0UdozXKI3ckYlpLFvO5ZUN1SMp11qRbErzWDNK50=;
	b=HmguCTUk1E2xYkjHLdtv8qDRYQZt3U0RpjCjbkkwYZsXORMdGqcIQveYyTHIq7ro
	ygUMgZFXndpulvl8Zpj/FJ1zJrSFWwl6qcq2GMke38rBjHEbDrY7YgmaU4AD1o4+0lo
	gW2aCrQ4GDBs8IekSGKRoAlFDb6KQQRl9Fy6md14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660619453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bnm0UdozXKI3ckYlpLFvO5ZUN1SMp11qRbErzWDNK50=;
	b=ktFu9juhfEDLoVhxazIBdBWzxbU0IfJ72vjWVJKBo91D/RpLBqXhZYTYHmpTTfYw
	k6uuG8Ri4avShCZiv++SwzTd6amIyOtnnPCcJQWy6RXX1VEM0+CvcV/YT17ic2HPMqw
	+3ImksDXxMRGXcjiskQ+JTWB3YgZ9/7vFdiJl/VM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4a1f0a7-b5d2e323-9c24-49e7-b427-14a9dd4968df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63e4218d5a292f81f3430eb22f6c52dd8fad83cd52be59460ffba79a27baa58e
Date: Tue, 16 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660619452
