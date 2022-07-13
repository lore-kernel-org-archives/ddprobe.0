Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200DE15AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657673213;
	h=To:Subject:From:Message-Id:Date;
	bh=VqC8O1VKSwEnaxuxenx4sUzpR52dEi0kvMJejApNptk=;
	b=jb0NoMx/9uT/HQXcfJtJslikeG4Xgg9MnlTTg9uRm46kniC5rXNZOYgNbzjpq/Q7
	R1G7+zlfJ25nHmnhhwubquKLINx/Oi1rR5hWw+Ou7daGSQrzObPIFsgs/qZpXArPnyi
	GnxJp/0xziwcIElktpbBL2+ynwb7lO9enDgpB7mc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657673213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VqC8O1VKSwEnaxuxenx4sUzpR52dEi0kvMJejApNptk=;
	b=A9kR5nAHvaAtOCL7lsRyB3UsrC15S2f3weN5eY7pvIUj7CjjsfCI6CVXgPKStFNL
	tzbpd5CrzItmEveNknrQeK627hcuzt5I3JclNNQxNDw8U/DNQYyioP1DBBFbqCdrAxm
	wY3mPEy77XSJLzXqeEz3UmUSL0qHHpKhX9maKJYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f505e22b-53756083-9b31-450f-886a-ca7f8b3aaec2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a418a3e84ea9addf78f30ca903c280ad8de59fbe7356dccfa9bb5fe680ba433e
Date: Wed, 13 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657673212
