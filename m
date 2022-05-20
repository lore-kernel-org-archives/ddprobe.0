Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086FB7E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 15:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653062159;
	h=To:Subject:From:Message-Id:Date;
	bh=0cPNTc4CzvldsXICJ5UqhsvVc/f91SUcJXU4eDnTWXE=;
	b=ANUeyxjObRrh+S53+jeGPgKiFrOtqG9kppxxL7W6WwbgCB1tLoGr5CjPRRpiOcYw
	88djp3/YDPH6MQUM29TAoNuQBXTstbVxjr9C8JLF7l4JJO7PBa3UytGnYVijQAnl6PG
	glQ733r+D/QMeF8xGt7NzTrvbgox1q/aUP3KEFo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653062159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0cPNTc4CzvldsXICJ5UqhsvVc/f91SUcJXU4eDnTWXE=;
	b=Bs2SFwMchExdn3xu1Ds5APJ8tCahe98qGyjGjzFv6j5IJeCE8AWFMhqQbEpLGd2a
	hKsnMZWTtWf+mUEYXy7caYMLgh15KS53iqPnkfkHdKJ3k8PXu5R0PRXaA0NJXTPvH8U
	zIiAQl/YNKlza82J0q2YKaQ3m2bHkZZ2bns88jDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e22ecbcd-a9f01c5e-603c-476e-b427-225ca1b016e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7473ca857dd23de282b04401ef124e4c00ecce43ac91cf4b0951693a264ac7fc
Date: Fri, 20 May 2022 15:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653062159
