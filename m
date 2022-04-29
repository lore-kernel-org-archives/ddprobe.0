Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7F07B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 01:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651197298;
	h=To:Subject:From:Message-Id:Date;
	bh=c6ZKuz6ZO/bixkbhxlCI49IJn4wVuoFqWeFLqQ3/Ipw=;
	b=Bah/eF5pWYtSBaZWArFYXQe3aOtqYkn0TmYKUrx96AMY/SADTJYrHnPQIHa6IVOz
	mo0UzxjU9s5XhUgpDXaNUxyufZxZpsBKFtOXXnXoBkiM/PrB1F+gIO+D9C3bn7zDTuN
	L7e5OrYQbGv9uVWrO5lUGXe69vhCdwCwdt+bHFac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651197298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c6ZKuz6ZO/bixkbhxlCI49IJn4wVuoFqWeFLqQ3/Ipw=;
	b=InBMKUGzDjzULF2bc9FIh140KKKVTdFGnaTK7N8CYnpa/l8amjV7XqvtSU7lj8kx
	gvFNhgKk8GAXLSFBk60m9cxVZ8Z1Hnc+uy2a10/1pln6/9UetDYnShdPo3Y+4O50Pzy
	RNKpxOwh9bq8qzqRrE34tmyZgIaKBJYZuWf8ugM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018073074656-99204e73-bb0e-49ac-99d9-f8960ea7b672-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30b7ca335227d8d9c879eedcf4d1a9d1f0d054999985ef325c9f457926fa0e45
Date: Fri, 29 Apr 2022 01:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651197298
