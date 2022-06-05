Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E134B1363
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 17:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654449659;
	h=To:Subject:From:Message-Id:Date;
	bh=XX3E3GqNtS4NOMPdc4wd3spejhk/fk2WCn8jzaA9NzI=;
	b=bBiUwfThgiPREZs+PuTjJdeR7sCFJsh6jCBVVMa1fJFRknSmCplYAW/LTjDiY56z
	Q5QEJqAglFjuaOWv1h7aDSgveYqJbxwuR2Vc9GhYmPyvvEbIua/J13d1nXyKQXElNi/
	2pmyHSfGwwlDWRwBeC3OzccSARV7KpCqiSlRHas0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654449659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XX3E3GqNtS4NOMPdc4wd3spejhk/fk2WCn8jzaA9NzI=;
	b=Ir1i2qv1GeW4xW3xiRHJ3qfWwoFjznbf6/A7P413lXZc8f9bS1ElfNWclXyGCKXC
	Ld84vbVM5gCAAgb4efkIZKGqlYAXMWwp8WvwzUTzLh5X8J0LxRpTlOg33sJKYuQwmVX
	YsOdqnxcqBjdD5KVNmeOMoIbyYxkH89QJHr3KkiM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018134e25d76-035fa7eb-b61f-4147-b28d-e95098709ae5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4fc4b8443f697481bcd6296ab56fc8a28ff609dd4196cbd58d729612e423ffd
Date: Sun, 5 Jun 2022 17:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654449659
