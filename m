Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0739015A5
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 03:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658461012;
	h=To:Subject:From:Message-Id:Date;
	bh=uz52Z6w3T2yNRH4VfVY0J2rjbemL0//WUFPX64Vw9rg=;
	b=JwfExwvThPgjDbarvcu0lMfsEKuBQaSPX+SMu8LujfzVcSDSf+XYXFOUZD+DffT8
	br6EBy/BVW4rU3iQEe8SupC/n4MJrok2aklLFUrQTGEeojMCY8gdc0jz+S7NUB/VKW1
	xjHMGIMOW2ALm4EeM8al9aSeo6do7WJdkgxU0OmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658461012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uz52Z6w3T2yNRH4VfVY0J2rjbemL0//WUFPX64Vw9rg=;
	b=SmDUlupdDjMNJYwMjIYNQv2ivKnsBufZ4h1Hpg6M6dU4gWZS30PA9Fzdyo4rJmIp
	tU1N9KUeMmqQ+o2bQKDvUAWbxFfTDlQLLdzhtc9qdgaYQH4EdIVZFPK/OX0rqXvVain
	VhfVq3hTjW3cXZ/M16TiUT5O8S8EGXe8ZemTagHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018223fac161-076eed35-c07c-4f3e-ae9e-c7ee7abaa5cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5937d36fcaa6e4ad5425f4d1240b1cd2eef5295d8a88e4ed2d020e217d26f5de
Date: Fri, 22 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658461012
