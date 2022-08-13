Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5EC210F
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660416653;
	h=To:Subject:From:Message-Id:Date;
	bh=Wa3vnPDs3XhNQAqmqQQBuqUbDVJIjxz8Po7uu/ryBdY=;
	b=L7ZcVm2g0qOewi0GcaSN79LtdA7E+jmq1b82wasIVTYOW0ajEbvSrzO9RGHb6BTB
	Coni4sMDLvXQi2emxyqvsVIV4C1VezD4IUWPK4/1p9gbX6ahsku3leuZId7FnmWQ01L
	YnFelk4dQl1butfUeOx5yanaHOfkgRe0M7F9716M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660416653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wa3vnPDs3XhNQAqmqQQBuqUbDVJIjxz8Po7uu/ryBdY=;
	b=S9CI4Uo6H+zv3e3SYAqXYvH1dHr5bQZJAtkusaKo+XsuddiidsUalBbaEMiaijcM
	CLNHiMdBViQXFIaWPZPb4WMZlv7YMAHTs4WGObNayq51AckZmyXIV0YWSWhcvVLz4YH
	0eJ2wV7ABYDmf/XeSjztgNyx5QfjocAC68ZGRAyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182988b7539-697a097d-92d4-4474-9a60-aef8cd43e08f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc2c025657744f88a466e8d8c9002bc1db43276e81934b74d1425293504a7c54
Date: Sat, 13 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660416652
