Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D1F7A
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646297485;
	h=To:Subject:From:Message-Id:Date;
	bh=D9pi9LEMTce4zeAakkgxuxwH+hpH6sV64k00aURRez4=;
	b=OxGwPOs/Nyiu5SN8eErRYXK+hH16FQrUsWfDfwllThJbWqwu2dRE1cWweKKcu/i8
	qKldt/8lK1yZx+Esephb4FlZ3Tq7IifWalfik6o8kNKVVH55ihgq0elZiQMxwRHhE5l
	fqc5KqBa0jqH4evOZdhCjiRbTJ20yQQvqN+8NsSw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646297485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D9pi9LEMTce4zeAakkgxuxwH+hpH6sV64k00aURRez4=;
	b=ML7UfK0h5s7CyOpAW+IRD+yV5x2rrxVSivj89w9KjaGJ8aJ4hoT6hL5RER9QU+vC
	1ZjUIt9JRsTDhGQUBAr3SpyEgVIrrYEZb4bl2S8zIBD4IgO9KShi5J76z6jADesJZEc
	PupdjKFHHPcniQnkDp/Wiz+ztCtvL/3IrzxsVY2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4efa0dc0-d25a9123-ee6b-4363-8b64-da84642e64b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 459d7f8a021c3f6762aa4637aa2729832d336f3acbc7147ae6579a12831fdc4a
Date: Thu, 3 Mar 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646297484
