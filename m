Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D0323BE
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 16:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652978159;
	h=To:Subject:From:Message-Id:Date;
	bh=rp3jeUo2ys+jdqh9Bze9/lr8sLUjv2DdFm5xCJEp35Y=;
	b=HsT+b4v9hNVY96ghWJbjpZ+DtiVNYiXvC188CC7UjwX6RaBNRBImNmtG/QMjcE0i
	jH30lJIoHbWH9pj8VSqtY5pTnNOCK+0LASdqCcLqSb79UTEHM0WiCMdloPu1GbCtki8
	hisv8Jvrqxh5KXdL+2CVlVvE9M4JuCu5Ey4mNRHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652978159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rp3jeUo2ys+jdqh9Bze9/lr8sLUjv2DdFm5xCJEp35Y=;
	b=fxWUoO9I0wzd2PGTwRFm+/9wJ1/jeO23nnp0vlQlV2bxhlaMOl+i4hsbcXRFboN0
	EB+WjyJv02mvUX7XVBZWd09P2DOJBZJgesfsnu75i5GD42EZc7UvP8VxcSmHwBYVzEp
	pyBBDhn9Krm3RkP7wNa6cc79lIVOlR3mY8YDg4GA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd2d0eb2-47b6d848-8b72-4c13-a14e-59ba8c66751e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 936361ee1680f92489a30cb4d5d6e25f87f3177d1f036aeb37d9bbe1ed6eecac
Date: Thu, 19 May 2022 16:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652978159
