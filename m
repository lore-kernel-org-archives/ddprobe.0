Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1309723A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 05:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656047812;
	h=To:Subject:From:Message-Id:Date;
	bh=iUx1tFUm7WvbN0ZtWwgiIWHfVjG3SZy9cAnOl9j0zIE=;
	b=PcreI3fxYk01jo85RDJWivaEI9AdXu8pU44SonKvEEz0NbEzZbpK0xLQfKDfal/G
	X5C1/2tD8BIdJBEid0rPDd8mhOdDjSwJaPnUD4jc1gGExr+nvOslQPyboucaQqlpC0t
	jB2Ta1vKzENseiITKtSdoWUzGKOJZMe/MTA6/T9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656047812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iUx1tFUm7WvbN0ZtWwgiIWHfVjG3SZy9cAnOl9j0zIE=;
	b=JB1XLVaVou/FYZyhhxvGSimQ0mWh/TmWBUs320vHGWQhIKp0tcJreu14WiNpKmHu
	qI5l7b2DomPuj97ySZpBLY6V9JXEBW0WUvNG5n9fT7Zh7dN5/3Gk3ihTlRe+9gSwdwy
	t3cPiTiuv85IlcgRnPVHqDlTpwlHKYgs8kaCcU0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194243ee4-658c0c6d-7a30-4dff-bcc7-83cd7729954c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f5ff6789d18d79d9ad9a354d30dde0339d0e653563cda4746ec2a8db92fabea
Date: Fri, 24 Jun 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656047812
