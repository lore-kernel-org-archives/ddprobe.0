Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491F37F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659466252;
	h=To:Subject:From:Message-Id:Date;
	bh=U1i10IJUBPpiZdWnmHynzr7+EdZeYVOTejB8/AU99HI=;
	b=SP13WXY2VbqGXKZoAyuGK3efJoAq7Qv6P9ChR0+4uLAHjx0IgUdc5dg7oaAnK35f
	2j2I9asXUcVrEYapA2rHS5oqWj+Dwu4+a2C7qyIRw6NqT2lRAjdXq96kv0oufKsgDgU
	fMJBENINlNPo8EJOseeLOJajN05um7bRVMKAEpj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659466252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U1i10IJUBPpiZdWnmHynzr7+EdZeYVOTejB8/AU99HI=;
	b=GtWiqPMV6fG4vj3JS2Kej6mpzqRwy2DzrKK8BPSiIf5ivuZjSehyLKe92nUCEKXw
	OpaHbpFONvr3dvyR93TXDwvCbDoQIGCO42B7BMyXPhvdyjHmETnx5tyFkG14pd1wyaT
	bWZ0YLpr3ajPWSVpPIy7LaUe6j3uWHaDjgGK1YDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825fe580f7-30796447-9008-4803-a4b6-5eae085d8aa0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22f43a674f6d04cf77708b9cc9e50196fa2fd33a4140800c99fc722a417d5def
Date: Tue, 2 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659466252
