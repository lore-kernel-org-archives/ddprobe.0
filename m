Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE0BEA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 18:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655836979;
	h=To:Subject:From:Message-Id:Date;
	bh=r5qH1mIuHHs5wt8/aNmbk3swEF57dADWCNzFe8S5PDg=;
	b=iAosEez8+ysILJna9urSmuvt09VLooO95NReYz9bPY3CP0kwiGuIo1hKFDh+gYZY
	S5IyBLsBUpwa1vdsncIs1qN8zbSd27zHFawCR7oOXhK2LA3LgWHZygejiQyiboXndLW
	3pziuqwcXBAdABPIGEbpwRh/xLJCpTJhRb5YDo1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655836979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r5qH1mIuHHs5wt8/aNmbk3swEF57dADWCNzFe8S5PDg=;
	b=DdPjQk+wDVge8A7yxfddekl6g45Bl9QqVLhjqw5dNok8/24dAogsSTLxEgdJiXk8
	3wnZ0i1D7KzVaq6Ply1YmBqmJMMGzhN049YdX0PJ2lPZFW3kozVG6mhYCtNyASL6A+U
	Nkm2aLanjI35m6C4upYmVtCotnMr0o1Ej0EayprM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818793302f-1b1004a2-c3d1-4ddd-9bbd-5cc24998348a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9be4f57a48886e2700ff697c8e13201ff3da670ea93766517c9d1f1b7f02d81
Date: Tue, 21 Jun 2022 18:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655836979
