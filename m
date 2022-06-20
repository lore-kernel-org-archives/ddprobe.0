Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6AF7F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 09:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655717879;
	h=To:Subject:From:Message-Id:Date;
	bh=FKmWSXvpDqHjPAXUrr5rgQv+ejLVfBLpHVpziPxq2gY=;
	b=O9As9UXdlPwL+bvg9mn/qcmDTnDiOYM1WpWpCrVhQhM73j+fYbh2WKlXhizpm3hf
	lZJoj/hk+DMCEK3ZQLv0NwSC+qto8sOn75NK9gVcUEgK0BrKRkEOawm8Jkb+EFWb0Kp
	d+ZG0psmZ7A8UexqARLku154BhtZBgGegXlPxrxU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655717879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FKmWSXvpDqHjPAXUrr5rgQv+ejLVfBLpHVpziPxq2gY=;
	b=UivnBRY2S13WrjsQjIuFNCVnpypQxG9knNeMr1cRElhouh5zfreWN4c11PHyknIJ
	zqYG0nYRC00oLaFQODkd9jJy9h3nX6Z4G//DLdgXSnvVHbXA+P2JKkRdTUgPOqlWz/8
	FGfD9pe4RFqb5JDkh/86tzxo5v11TSFFsXsS3iSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818079ddc4-6a0f8d22-b4bb-461c-83a4-3f23c7dd254e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b8c5633544a77f951ba2e5ad80630d8a192a35f325feba06ba915b0aa7d85ef
Date: Mon, 20 Jun 2022 09:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655717879
