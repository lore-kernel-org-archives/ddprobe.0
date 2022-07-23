Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1657D7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658565412;
	h=To:Subject:From:Message-Id:Date;
	bh=p944tSVprXeUmaN2ja+Rrlfho+iihGMMw/Jj5i2SfHE=;
	b=QB4Ubv72jJoHNwtFXLYmdPtN6fTZGAiNErFw1f60oKoCCOlKhZfGoGqhHbN4+NCC
	zPqhmq/NMIXQkkwOwvHHUJ27a6D/iumNivC3EvRBEvAD35uJR+GvG+XYjMoogI+1+xI
	id9xgUyTjTkNnV7MD9O53+sFwmYCKfuBKa9pVt6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658565412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p944tSVprXeUmaN2ja+Rrlfho+iihGMMw/Jj5i2SfHE=;
	b=Rc6EKoMt9OFq9y3fkWsdau59+L3UKgrAIFJ6yx0IcyZQyAo5qiWgAm6EuEprcgYR
	xRka2DvkkEgWI9eMbyiFh1YGn4d3uCXIREb5thBIxK1CciejSs1lpA5Gxuot3LtsOrD
	S733IKZO6qSdXKUpBKba16sXDaMa4ktWpzYoUTOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a33c5e7-6fec2bb8-6ea0-461c-a21f-740bb7965bf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40cdf54753e316e77d2a4a6c32c8a46ea6ebe498d9df76a30b30050e24c83468
Date: Sat, 23 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658565412
