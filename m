Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BD023B6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 11:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655380499;
	h=To:Subject:From:Message-Id:Date;
	bh=sorSJ9o7buTFfWD+cWMO6/JRcQcjOYMwCmCj8Uznxjo=;
	b=KMTSMwy112U9jSsgvL2yF2mDhfeL+JX9XMmqEoyH62a4Ad80sRGWBkvQ1r/KiWYD
	N5jlrcV15bCFaTyqNteqcO7RSWy4+0KTiwhVBRlEDDjBQL5tzWxs5scB2KExwIEzgwJ
	mlvLJqBKZNASkeEWPs1DKiaAD4AjC8ZyUipj1Vys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655380499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sorSJ9o7buTFfWD+cWMO6/JRcQcjOYMwCmCj8Uznxjo=;
	b=UdqKkaNfzj3n74UJCcogdl5/VPDAKaZVaQkpdocThfUsiWF+IDY81jI+jTSiVJAg
	UHoQwj1+sEVZrMyeicSdr3JyQgyUsTiIj3zPBV1nz3xFe8BUiTtOmzmhQnujNqtHOoX
	JvN49pOQhHLtNNSZk81uq79AVYHcBl+Z68x2PX6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816c5ddb79-3ca4ea35-7b46-4258-8182-6856422632be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27044260eb6f48aadd8fc7cd45796b9ab4e3c3b27ac7480661c5a3cfe6ed6726
Date: Thu, 16 Jun 2022 11:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655380499
