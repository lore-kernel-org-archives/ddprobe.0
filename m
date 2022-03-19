Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B9B7B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647722184;
	h=To:Subject:From:Message-Id:Date;
	bh=sHjFnx5C2dh8+EdIjkx56jZ0XnTaGjMP2IZdjd/wWZw=;
	b=gAq07rbPPwCfocDnHY+SWQCIUVGIvoDONqRmlCv/Pem3QGZQW51Z5JxTMsvrIL4G
	KpCLuj25w11GgvlL4h1fnsS06gEDU4fxINZvA7obsGIbzg84uFr6CDYRCuXlb9cgWyk
	4lTXFcvr0GCAf29G1JopayChAxjN2Z8a6NcTJtg0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647722184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sHjFnx5C2dh8+EdIjkx56jZ0XnTaGjMP2IZdjd/wWZw=;
	b=M2m3w2YH33MGvH0OMYmUfREZ3E4xLX6I/wbfyUgRni/aPg6+nmLbOhULLivKGK8Y
	J+fAT0AeWODVo9xjm0y7Y6FyGXPf/HWBYnMr8ZNlWXujeTiVDb0tgAhDk3vPtsULvdw
	c3O4JwS7eBBEl3pl3opX0qOL40Fn+adRd0lzjK7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3e54037-d55af89d-9fbc-478f-b42a-6fe6ee8a1604-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da784a4db420db3cb070d8b17ec80517caf23b57891438e72a5397f35eb91f4b
Date: Sat, 19 Mar 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647722184
