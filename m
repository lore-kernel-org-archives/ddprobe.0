Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599AC36A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661113852;
	h=To:Subject:From:Message-Id:Date;
	bh=s19n6SwdTkfgZlRH7T52GUHuYwNsAotN5E8XHEcLDxo=;
	b=XZwQOhWEGbPn+rJ66iofEz5/KIB2YEhIAAh8Ib7/QbqakEbmV+pf+P+V/VB6Qmx6
	DqqcUAAH24itXechbWrrK1Zw/A/Rap4morQ+TPqY1eDlXUsBN9CUp4pzZYeLGoLNCwy
	axjYv72BX7s3e1ue1qkC/WJ8r0v/Lxj5zvprz+oE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661113852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s19n6SwdTkfgZlRH7T52GUHuYwNsAotN5E8XHEcLDxo=;
	b=NkOiqTRL1US8vWArMhHKpEPC9gjX2di9xQX9X8NmfpoRjXyS6KpQ6E8Ph14FCX1L
	l2KwISf5eLokvYStoKV7L2lAI+PkpHgQTXdDi/VrEG+ged3hPC4yakX4TZXN7gGOyaC
	qxx0wEWoaqcxWmIcRmDT6qX4t0z6pR/x0NgEsZIs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c219e2b7-24cc0073-8a2d-45fe-8d85-933bd6995285-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd8a4fd6c8cc69372aaf9f5d817239ccc7c3fe39d31241bb0bf62b2e9a2d7fda
Date: Sun, 21 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661113852
