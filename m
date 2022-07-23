Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A14C7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658584012;
	h=To:Subject:From:Message-Id:Date;
	bh=1OxWtBwr7JFRj3eKN+2I18V6YbGgYLAahr0h8zVegiU=;
	b=AonGM4xaZFCoyVqskMkw18T/mDeBhN/fk7jha2YfR7PhrQ9lc5JhLX0/6uDoD6+o
	W92B38VE7adU3C8Gcrbi6fq7OqwvLem+yoPfi5nXM2+M0MP9+gnGg3Hn4I6T7+U2LDV
	fa2lUR3vAUDN5DmxVBxiUqgCStepKMwXjp3fdcRA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658584012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1OxWtBwr7JFRj3eKN+2I18V6YbGgYLAahr0h8zVegiU=;
	b=AkL+udkXTbuZlfgvlbw0ampN0Mt6TAwA4m3iO7q89uHWmnLdPyUGCal/ZmZjuirS
	/L1og2rUtiD6T+6Fa/iW54Ic8+mc+cahkK5k+NubZbZ7nWzDKFF8bVf0lgJWlZASJxm
	gfRJuw1wsjg6ufOC9VXrPlhR/Q7x58doK72onuAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b4f95eb-a480b770-02f3-47af-8b9a-d11e33898071-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b75c96f35ca8838ec99a1b37addfd3907986ab8dffab1960737b24e6fafe32f
Date: Sat, 23 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658584012
