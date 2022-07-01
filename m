Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361E7580B
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656718612;
	h=To:Subject:From:Message-Id:Date;
	bh=vgEWlRSj7kWwgsvifVTldlIKRPcifL1hYBUZXRLXG8s=;
	b=KGbMRDGW7R4pRWNb6AkUcBYQpXDh4VyUWDSvEvhEFR1P3Y7W9ec9ektRv4DXk1Zc
	HHi3+AdcqulIyhYGon8l8gt8Ib5DZx6DYNrX+Npgy1zYUj4QWXNpOW3C71I46yry0tk
	+CyDuVj0AhGZgrsSBzuvt3MviYuYg3DApcPn7/RU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656718612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vgEWlRSj7kWwgsvifVTldlIKRPcifL1hYBUZXRLXG8s=;
	b=fmKeC1cXGtBl8Mp2G+40kW1aDov49CG+WWbbVV+SNlEcoKFVtoT3rMGGsWxA2BIf
	GAKm0kXBEA2PnkzQ0VFmSgevgS6Fk/9DpRoAzMxiT/kgxxQL47QvlWqLtz5u/hCntCl
	HWQ/yRkb4FbY0zhbGh37kMAYuaFz9FQHylh+AXTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc1fd736-49705c2d-7e3b-4018-b887-cda7cf448b88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57a904f5a81eb0fb34c0a6d20873afe79d49733355644d5b0fe643a61caaa7e7
Date: Fri, 1 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656718612
