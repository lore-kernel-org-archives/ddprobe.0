Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2357C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659905452;
	h=To:Subject:From:Message-Id:Date;
	bh=kRKyuQi6CwutB3CrywQmgG6m/MhHXMwZJRkc4Zcmd6M=;
	b=ksCc54k73jtQxUE/JQpawR1mBKWijZJ5vq42Pnew9icxJZCKcLuXFKY2tKQRtmAU
	moiBqnB3wqxXRE329tRzFxOrCHTvRVhbOgB6LgPI/CSYYQS58bF3fINKnEKIPkvCp49
	6GdfAO8EDAgOTUjR1PI8GWmGjCkG9M9UIShCKVjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659905452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kRKyuQi6CwutB3CrywQmgG6m/MhHXMwZJRkc4Zcmd6M=;
	b=Vr0LXGKSGa2dkwISVAtwH//bNOXMJszNcKI4jG5rUEL2K4yO4KqloAh72PbHFxNs
	az0mXOPmYa/4n6oqsXHUn3s9CfznO/EnPULEgt5YvkJ+rZ5HLyyQ/CSITDs6neG+uNO
	pQ7ncGGchtukTAnhu6C0gKw7dJorOLdNMDjkQO6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827a132a44-5830dc57-295d-4f84-ab15-444142b1c4d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffc01391a6b210d883d81337eb63dcab7431e7fca00c0fc9e24d7cfeacf342c1
Date: Sun, 7 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659905452
