Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B459EC2
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660559452;
	h=To:Subject:From:Message-Id:Date;
	bh=mBUqznb2oNKshO3N2Wth6QnBRG1J7rj1Q0UfBpmiV18=;
	b=fwhswjJl33d7iHKvU+29wH1w6VNo/kr3XtWnQCmHDV58q+oLGav325boG62jxDKL
	kfgQstw7jgCshzZKR4x9ZmkRIl120yUPPwfKCh/XzlpftWiEjxyVNjpp5QmUk5tHzgn
	Pk7z3YIURRdyt9khl3BEP/edPt06wgiOb5afe8Tg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660559452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mBUqznb2oNKshO3N2Wth6QnBRG1J7rj1Q0UfBpmiV18=;
	b=R2NLrZj9B9ptR2bcL+8NejKSvZFZqmaXLc4TBlKPxTUtn7Oxkzj9di1S/umaYXDr
	kaybL3VfMda7//p5WxLtOYtcy6tTJDAzKrWMc5pgU+XMBwwelUMRJoLi48uQMniPxsD
	MKSO3DnrfAJSj+Cd+XGeQ9vDs/XzMJomV36aBQxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a10e69cd-add168a7-dcc2-42cf-b12e-7b8541bfeaf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e297828f4bce7c28a0fa04de620afdf8c35416b9d044f0aae112fef5eeac8d9
Date: Mon, 15 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660559452
