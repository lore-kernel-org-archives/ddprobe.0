Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89892258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647804384;
	h=To:Subject:From:Message-Id:Date;
	bh=Kza6EDBx7m7NSTaq73VSRk7A09SJ0wDOuMJ2RdJ1raA=;
	b=ISAo8C/XWZQAS98NBzuAuZ5ieUSFk/NSQIyF6xoQcyAQmrAolQC+C8RLAilyDPh7
	IYEb6rrzXGWZgIZxx3QI9WlS0TS9LZYtK9eMoKlv+AuJ42bQN4C0ERgISJM702fiykq
	F2z3jI4ANxtGsN0Oys5JtxQZOEzv6dt6Mturz5r8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647804384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kza6EDBx7m7NSTaq73VSRk7A09SJ0wDOuMJ2RdJ1raA=;
	b=F7L9vF+HjDAMusxeOMslR3zHUaLcK3H4HybbP0mQOsJueERgyhSlI4gf+ZQqXdjk
	kDNpV27Tld3eYLiHYVLg4m8nc8mEoa8ZKWr14Asinm/GHAKApJ/+MCUDCK3jQ5P097F
	JNteP4Dnz9A0cwNe3n9nln/Y31fgnqiui4iKofWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8cb8612-a6ec3cec-299b-431f-a06f-3751e0d0bc88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6135214734ae91a6d20d78717c197c88b96258c99527b162f6d7f1eae089c602
Date: Sun, 20 Mar 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647804384
