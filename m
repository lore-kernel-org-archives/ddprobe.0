Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB2410E8
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656653812;
	h=To:Subject:From:Message-Id:Date;
	bh=DzayzLfKmXQ5+k/vBZUbutB7AFH1e8KxdBofuTbEg5s=;
	b=Z/Cs+5vO6tkOHyC2MzrpCAwxMEWS2bU7sykSvldF2zp72Dp9DyoujOYpAyczURk/
	eSeNE9HByFijP0CFBO2TIDHA7vwRQdN9EdTjyikm9mjB8GWhKUBHwIn0OnSamjX3bhl
	lkeHKdJW7OSAWDEsGUKv/4yPHA7fxGE4miQAgqRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656653812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DzayzLfKmXQ5+k/vBZUbutB7AFH1e8KxdBofuTbEg5s=;
	b=YPlOAspEmwX2hMf0rPiVXSijtlXN1XHm8tlq72vxXw+XQhY3+f5rCya2oU8O3TGo
	YMxX0Scp2w+Fw/bLiCtEiOXV2BBqOHuNOxTSrF8xXNG8Vs6ezFaqBaagFs/ysXO4sUE
	dlYrcXLK8n43j5GfgPmbvtadNvZOEuw2cAYvr3aQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b843124d-dc21c3d1-8dfe-4c20-a186-d8f8778e35b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93ec763b62782a081335c9ecee063787858e242860f52410a733fc7b21f29ff8
Date: Fri, 1 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656653812
