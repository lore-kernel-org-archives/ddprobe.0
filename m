Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1553F7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 16:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650041878;
	h=To:Subject:From:Message-Id:Date;
	bh=8O2ZNecdHShRUTFAMu9nz2jOB8nmdhicKwmG5APpirk=;
	b=bqw4TPbsmV93DFiZ/cU2NMwBI2ZHTFXA80ULy3JYwRWfbAKXkH2Hm0ZzIcCypvRR
	Id6tNDwGEA7FPSinuAhA/7Letq4fkQlJW5rCsNVlr2WDqAhpwPtkjj2KAu0xGhp9/EX
	d6bZyQdO1tNzK1kHQxjSkF4wK3g0kQBHchWCFm18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650041878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8O2ZNecdHShRUTFAMu9nz2jOB8nmdhicKwmG5APpirk=;
	b=dk3jhseUrZ3DnDQz5wXw6NUl+TNmU/N4AyzVSJGCJrdb5Ap19Q43vyyFjxopQ0cU
	kYdkMUgEs5YZPCzf6Ue/Rq3EWLiet8kZUN3rTGQ5SecnizICgWlM1HXNkZcpKyhT+YT
	PJPRhxUPYB+MCAP0Cfq0IhaMujGzUZUPb8oDipD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e28f6d0-62e82b4c-ded9-4c97-9148-bd783abb7d61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf7890ea7f459814d889a06afaac81260cbf1ba6353ca8c9eb7d5411484eb471
Date: Fri, 15 Apr 2022 16:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650041878
