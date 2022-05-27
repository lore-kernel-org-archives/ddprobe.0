Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4495C7F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 18:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653675299;
	h=To:Subject:From:Message-Id:Date;
	bh=dpyZmp/BSP3pX2cvIAUuqdRjNv0Be66KaX+4gCfpHUM=;
	b=Nf4DIdf6aDfJ/2WrGBvSVQ30Jlgxs35YrbI6Du9KFD+X/gumJXSYnwX1Qr5Ikc9U
	sNqTuUcCaSjv1rYUil6+AwNoQkU2yQdmBtbF/43hksjkg50vGMd6VvB6I+yi0ZAlWpG
	WXEsjGxzQ8h/e+wYEEN8gevjP6J6ToGkBtuJd8TU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653675299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dpyZmp/BSP3pX2cvIAUuqdRjNv0Be66KaX+4gCfpHUM=;
	b=EeLzWiteJ6ZzsMobj+S4Ud5cVf3ycDz/jgUpqQKwPeLHvkvnql7uIjbAUJyBMPYH
	ZiQbL7UF9FV8t/7YxtFuuH2mqCx1Rh+4weNRu3eena+gxVNelZGm+Ayz7t5JpKgiDey
	XnHrxNrhBRuovI1JutafscR44bN26UhSaYFlq0d8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106ba9226-03eda4ec-bff9-4e85-a308-cff28ad07466-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6527d24f16233b0f9fd0f3dedabb9e313a59a82028e54d1be66933a10acb0dd
Date: Fri, 27 May 2022 18:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653675299
