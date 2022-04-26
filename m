Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF26633C3
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 21:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651007518;
	h=To:Subject:From:Message-Id:Date;
	bh=VgsCvA2k1d7A0H1VhCYvtHx4gGs5BSZrrrkmvvU3QDU=;
	b=WpG34iXYgU7vqV1RG0vFb/I1PAm3chHqT3Hpa+kORn7Tjb65MqEZ8JakUG76WIhB
	syxA1dxhwXfwKt7c/AeR0HQsthMFS0Wd3x4sjiflDRLdm1yMAOJfK0TBJm2ZlkPxxzF
	+aT5sZ9sxwemP/TzCO8o+yypCMgjKAv402tTDWYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651007518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VgsCvA2k1d7A0H1VhCYvtHx4gGs5BSZrrrkmvvU3QDU=;
	b=QxHUd3tbQThKbhJDTE3eQ9J7UlYbQbhEwcilhV0Lc1PVN/22R2x2vlQ3SIzfGCol
	wg3c2weeIognXfvICGV/GI8EppPqspEsMfgYs0mFk96gWMg5BQzlIj4HyAVb8BgsGOK
	S301Yz3ASIeoAu6fx/nesuoiDknxoIcsK404BLMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018067b77656-baada0bd-caf7-4f2b-bed2-ccc9478b7082-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f09d014bb0b12f83d63b5980592dd358eff2c4e90e6282120f1b53e39c7020f9
Date: Tue, 26 Apr 2022 21:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651007518
