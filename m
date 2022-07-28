Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504B37A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659019252;
	h=To:Subject:From:Message-Id:Date;
	bh=bLGMZ/Q9ITyKdZpFumrFOKETNElVy3kP5GFSfQok+5U=;
	b=IL7khwbWRt8w8QdY3V29G0n802Bb91mipuCabL3Di7Ol3Dz3mvjsze2agwNx5k7e
	Av5PVxU55S0LZaTx75cshmm/mCGzUED7JxbCtbRBEFQQb673YW2Hs9pvCvS4V/TiJUy
	B+tXe5I9wkyPr2KI2G2SKLLKmuPduTpY89UIxI6c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659019252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bLGMZ/Q9ITyKdZpFumrFOKETNElVy3kP5GFSfQok+5U=;
	b=JnN9/mk1FtgbKi1rT//jITwwIV9zgyq5eyuIlMcRwD8GMRRten7dVfVyNoHL3UMh
	8vrlnMlo3pDmZxHmvihjrnMQV8oWSIC0MK2TbufZv2mne9yyh+kjHCHc+Po8G0ocZcB
	cIko6zMaqzRr+y/6AtYFDDYI3pke+NOZTl81ce20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824540d36e-0f2a94c2-ac1d-4e99-9337-2dc1e6c99983-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6252aed22b4f7d0d180947d4820ae826b43a216a78c56875f856b2eabeb6363
Date: Thu, 28 Jul 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659019252
