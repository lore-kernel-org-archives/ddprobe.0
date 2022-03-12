Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889EA7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647125484;
	h=To:Subject:From:Message-Id:Date;
	bh=mXDtFMckMBqWD06wzMpl8pzyiuud6xU77iOlE8GW1a4=;
	b=jNZolAAqYFbpk34RoMz0DraJj2s5VDvUozq5e5i+cvCxFAHYpP1t6jKaipsU6AcO
	eedXJrGh81EZaQ6nR5X5mzW8SWTGUib6GNXkO0t8+Tlgru9OoqHpOjZl/KJMx3Z6XGA
	AmXiBD8DYvwUssGt/KXYYusj4pdNaYx2ddQlc5Qg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647125484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mXDtFMckMBqWD06wzMpl8pzyiuud6xU77iOlE8GW1a4=;
	b=NfklhCJ/9ufNv1D6qdW4g0nuglsgP8P2MrhMIwUAYB4ukQxKV1hZEN0/h/gLknKz
	QunZAN7c/kiPdk4x7UDWVfJruVQHNlzhCwMsbqvgDenyHn2rxySUa0crciCFZlgjdrU
	VlmZ09LxB0H0jAIXlf2CCZ1RMduBF/a4/VA6h2P0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f805454b1-36fa18b8-af96-421f-a999-902b2bc760d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47a000aeef3113d0cdd56859523cd6751e28fd344ed2c285b5140b8f3bed21e0
Date: Sat, 12 Mar 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647125484
