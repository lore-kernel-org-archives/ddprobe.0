Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B25EA9
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 00:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653523979;
	h=To:Subject:From:Message-Id:Date;
	bh=Ijm8IrZ7xZWvOFzcrMxmKKJgsavjjEiymsRQLjAZNyE=;
	b=KWWupz47h+t4ETfSvFqCAJ1EXDzzov3V33/DXod5RhdYKT9QOcp8AqFiyIyY7oQd
	r2vdOTaRGFGJUrg9Hxh3NBaPYLu4r0zIQBfmETnn70MxWRHOm9uEAvjhif7qjB3uN0y
	AI5X0siBwuWMKeZkr+NtIT5rlNmG5qor5xrApu3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653523979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ijm8IrZ7xZWvOFzcrMxmKKJgsavjjEiymsRQLjAZNyE=;
	b=HrMsYcIiWQ4jFPYTcf5FWzSNyKEgE5+FHllEJR/PYg8e/YV63HS8bNREHvvDfFRv
	gc08kVahm1SX+EfZWaFLhAnnLBrnwDXQV9uSFUHUfi1gou9by5rHZGrcGW/xDiXfsTo
	xjtvgg0MMQyodfMpusEKm638UQ6Dxq9mYaGTWvFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fdb59c26-e775f357-0a32-4e21-86fa-3a2f0fb4c8ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2db19c9177fe791d12c179eac5bbbcb16de1a88629eb7d0973d987c39ce8f8eb
Date: Thu, 26 May 2022 00:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653523979
