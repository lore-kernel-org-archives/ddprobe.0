Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2167A23CB
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 08:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652950079;
	h=To:Subject:From:Message-Id:Date;
	bh=pWtQBUf1WbCZ8dXgd5Pj/rClaHbAC9sGroplHVousvk=;
	b=CIx1wL3coi1m7MofC1bx+LFuZiSj5EHnksvKY30aK4e5Svi6wgZp5/QrivxjKu74
	K1CeM8vSNB+8vk7NdsipafhJumK+j0T8a+58ZTAm40Rkepj2OMlcF0nV8dqaQn5Ugdk
	pnHfmBWC9fcjfPJLxtnsPpK9OFJbvVBnPk/pbi0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652950079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pWtQBUf1WbCZ8dXgd5Pj/rClaHbAC9sGroplHVousvk=;
	b=RHGoHO+nw7hQyjYB4No8UW5lSCcDxnfjyQz9yzG43XnymvEx6IjJFOwXdjF5siWe
	jett2XfC5Q8RSWTZkD/NHKOvOtGHDZSSzg/WmUEGXGLuNp4SiQFoQHkQiWoyoLknCN1
	i6md5eW5cXKFYC5zDXgOh/KWTKOArxaJV5mPMT20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db809741-ae8ca3be-4cc5-402d-bc99-1f152684f670-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdf0ce35efdfe7e462665392f49951309246792ed62e57cadd4a05d05f4d485f
Date: Thu, 19 May 2022 08:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652950079
