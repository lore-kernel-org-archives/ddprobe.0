Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE7F4A3C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657040212;
	h=To:Subject:From:Message-Id:Date;
	bh=neQgauUt7BV7wFqX2TMl73qYba4kyHKIQX7qE+XZPVE=;
	b=jWgqy6ryNKJd/4vOMZFGJv+JKHvaBvCNw5eK0qSIa2OEvcnhasViYhwuD4IGVG2o
	rzldXS6I5BhFSaUksOQ8ukyteqSr9BWnc4uCspgo949n1cEI0+ZmcsWtycRppr0jglK
	hyvtAc86/7A9zsH6EF37mknu2nwor2i0l6xMfuAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657040212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=neQgauUt7BV7wFqX2TMl73qYba4kyHKIQX7qE+XZPVE=;
	b=R7MyhBQuGOmbDojQ5rkSJXSURms2Y8wWts6EmHrDZDm78j3EhGHGsBeXk4jQovlh
	lGh3yG9xDwfsMcfXJf5U6FfyEbFIXRMECeLbo9VblOU7ZMJ+8brrmVwC4xFar3YxnSk
	HSsyGrTTdliG/uDGoV9bBgwa72U+jDSQv8YTIWos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf4b1148-fd69c6ec-cc97-4a57-8d30-89cd73ec92d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 864004b24446d88c2e4d739379ba52456fb71490ea62cd0776034ab3e1ec5654
Date: Tue, 5 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657040212
