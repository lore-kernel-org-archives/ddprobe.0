Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124CD637
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 12:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653309839;
	h=To:Subject:From:Message-Id:Date;
	bh=8gt/aqgY1haAZTC4EJeyKP7DGwL1nsvpMja6Po8qChE=;
	b=R64OnXEFrJbZzBQq8Q5HTjWaST4Yw2f9iEylDUvIb63EGmGsY2Z9ZX/mH9nLA8Tk
	ixmCbB+ai5zDRkojy6zed6Ots54rlj9usFxQK4h9GJ1aBdGQxQZrtl38wC5bpXtX4S6
	QZ4rxzBNwowhkW4Bc6hYTnDur8LSl0sCz9vQf8Q4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653309839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8gt/aqgY1haAZTC4EJeyKP7DGwL1nsvpMja6Po8qChE=;
	b=j3z6TXezqmhUUarSc0R3mf8byXW0BWlJX3yzzKJPAxsrwtJVQD0eUhvh4vjdv6d8
	/0Q9MdIMDod+l0E4OBrrkKsOaqZt/f45tqqmlNICy6BdT+QP1QCU6SE9h4XXeJoIjhr
	NQZKLBEWblM9CxhF1wbmd/Pf0iAdXi5gtfkW26ZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f0f21772-f924cd03-4929-44b0-a522-752f5900097d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 567c6d17a4727f6f10665120f1ed97ca45cbd442c12c50703c63948011f2b029
Date: Mon, 23 May 2022 12:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653309839
