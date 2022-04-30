Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4601E1852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 09:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651310398;
	h=To:Subject:From:Message-Id:Date;
	bh=mSchH7gpy5jPF9W+IzuZNX4TnfgBDdVaITqdHjEkXsw=;
	b=HKXJfee0UJOOcnZKC8rsDLTuCOdwkuf0mBJXvNepNiQhiH6f+JJnDK71PG5lu5Px
	f5GDpjmEHa1GO2VpVozzLerocd4OOoxft49HiIe1TtwbzWYARUJVYkpyUnpWESIMgLw
	h+4OEB8vlE9RXLUx3Jst4duGAC5TYzRKONKc4Uus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651310398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mSchH7gpy5jPF9W+IzuZNX4TnfgBDdVaITqdHjEkXsw=;
	b=B6crKeFWjTotSsP942/nA5NKZK9osSUShFKxqhpER+SB8r0v+8lUWeUDuRJCJkyf
	noyJiWYuNBYr3wN4vLgK2mKm166TwHiQdp7zMNq1iyTuY2P930zIqXElWSDSISXg7Qf
	oqn0bw+yS7XN2MBplYDmjdw3n9aRJxWEmg3hl0aM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079c50b25-4dc70367-41a0-4c42-8658-271e678eb428-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56189a550be6db29280100f5161a7b3bba53074398ef36f5caefef59e4feefb1
Date: Sat, 30 Apr 2022 09:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651310398
