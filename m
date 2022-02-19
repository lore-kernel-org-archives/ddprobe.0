Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3274F21
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645229484;
	h=To:Subject:From:Message-Id:Date;
	bh=dmKauDWldgsovEi90KB6d3JdkYoMWFE7+ADsFmsO99g=;
	b=UAbNMYwNOh69xydlxndNC/FL1WSrv8ePL4yOz018ylOEICDJAqFL99lfsjrrp9Cg
	a1juoPC88cHvpvil/43Ot0JAvaxxeDmV8ZxZwCp4Du1PQKXMNV8bxrBIujg04EPLELq
	6eJdI1FwZlVSvEz+3HB9r8gqdT+e7eUnHlxPXuGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645229484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dmKauDWldgsovEi90KB6d3JdkYoMWFE7+ADsFmsO99g=;
	b=AJmLkRpD/WlitCyL8FXHVTue6Qs0zQmCi+q2Q2/6iLfbMgmfRiyTXA8NT9AOc8t/
	kLUFeAEXnToUX9FHqWRcUAPJLohFZ0j5XoaPZ8/sxruQ54ggqmltkF72n0uUgnAb93s
	cHL/hSbutJ4PwVUz+sPw6qBP8s2pxpVJLPicCmMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f51ab02-6c181d73-f062-47f1-877d-4aa100eca4f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8025a3aa564f353281337062a587961dd4438a77580c7b5662379bd632748fa7
Date: Sat, 19 Feb 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645229484
