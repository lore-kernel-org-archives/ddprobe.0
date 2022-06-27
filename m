Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7E020E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656298612;
	h=To:Subject:From:Message-Id:Date;
	bh=dOL3eNeD+oeq/JlpcV8jiLZgs5S/6DLI4bzwAQe3bi4=;
	b=R1I8qyApAqvMWiC8pzJReDZwWS9qilh/65msdjtmbAV7wHfEVO9GGFlqbdYYYmnO
	M67E+B6ZmV92eqQ7jE8dMEumPB8wMHbSRWLT/VfUtZbfElF5/1kbHBPQ6X5UclaoXIt
	Ft+m1ZHy5SrFGmCKJVVmvjy85Ex9XmRRcedwqBhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656298612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dOL3eNeD+oeq/JlpcV8jiLZgs5S/6DLI4bzwAQe3bi4=;
	b=PURO1h+r28N6ZJ6mCZRnOT366VU+lIBeGlGkH1hOoRg9s4RKT2sFChXWvy4sY+ub
	GE+U2nAT8KCqOzw7NIaqH1RDkSfaZehvAtXvksLkwTXC5BxdE5Uw/cKiUvGvnLHRQvo
	beLfBWaES5EOveakN5sjLm6xOr7jSSd2xc7bg5e4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3172655-a76a6cae-2e7b-4350-aeb7-db3ee5be5626-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d327c673cf19ca6f59bece47e3d6ed3d2dfcf4d4c9ec2f60aabb1cf16e7a3d37
Date: Mon, 27 Jun 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656298612
