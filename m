Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E72417D8
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660896652;
	h=To:Subject:From:Message-Id:Date;
	bh=yzDBnCymENu5IbKrRtt8TDB8Gfdom0GXqYNNmmXRk5I=;
	b=DC0p3EIpbiBdl3I/9j1jN1YC1I1BixkOntdKqUVUYtbikjPZ5H2WLdX4XLuzl/n+
	xvLq/cMoCs6lVtzOHkNwBTIgoydi3JD+eJfpn0VWK3zkLXkm2/l4Ls6bTEgncZSZ9hq
	pc+BLpvd+zaz8rV+W1QwiL8nOaEnSq//hxZYLm0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660896652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yzDBnCymENu5IbKrRtt8TDB8Gfdom0GXqYNNmmXRk5I=;
	b=cL+NfyTJr3ZKjSRwxctnhgc8sZvhdBSHZez+YymGmq4m2BHDNeM7rApPjGHRomDj
	2xFA9OMqUdZ2w2/y+n7pP5EbyGn0PF2gQccgY7GY3SWMfXPNoQO0RD8btNHIju9NnZR
	/ktK9Ya9nT0S2zoTIVhrJVc4+kSivCuZb4ApUy8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b527ad22-26718c89-950b-4c32-9985-cf2176381f19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8a223feb3cd57444d494855646288ba5cdf986cd1204908357ae39ad8bff53c
Date: Fri, 19 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660896652
