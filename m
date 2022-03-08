Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC817A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646727985;
	h=To:Subject:From:Message-Id:Date;
	bh=y2ZeSgclaPrCkBlxtZyNRLrBr5aquAbzItS+efzAxTk=;
	b=QTGvr7Malx+N8L6JQFTSnf3SPyr0bpk/qYLVtcXFpUs6BNJBKloPuJcAI4OQgSfw
	JLU9t21it7NnHSP48Q6PVD2aSZnQvyFr7ubZn9D4JD+M1CZ1pjye2m3dbKPrnXxgOja
	pfWfYHa8TZnqcO8YnjY+IFJhmRr3/9pq9cowRwA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646727985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y2ZeSgclaPrCkBlxtZyNRLrBr5aquAbzItS+efzAxTk=;
	b=d4ny8Ozlup5MrBFQCedPYEPyPl0HA5ZHZt3kxPfKiA2sTFvX7AYYvGSa5iR3LJ6P
	cMAIZ7CYGY5+2TwnoAF3/bMs8SKi6S4BXQNC6PtmAV+NoaAAsBZ7P1rBiGBELjZQtwv
	WQVNVIatIN7W/cDBvklPzA5OqzHE+cb3xVULjXr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f68a2f67c-707c5e07-1634-4db1-a168-dd53dc2dc197-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10f46291b3b5db672d2985a99938ccbbe00357ea93b2f77042185e6a03e99ae6
Date: Tue, 8 Mar 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646727984
