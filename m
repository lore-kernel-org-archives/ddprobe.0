Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151491852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 06:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652856299;
	h=To:Subject:From:Message-Id:Date;
	bh=UVdKqouEhpTsVLArNImglt2qIvj0ryC+fDBFuAF4r3E=;
	b=PWvMPmWUEwnZGAVAVfWaiR0G5bnah60/d8FqGILqRuzQzKhViXgIvTSZ1ZsRvSjG
	mPTCBFzMnYDcedHFE0t8pBIuytFOHFHQ9eMD+7AuGhIbV16j+MveBF2u3MOv2/iTFyL
	VphHlj+rr1ByHQX+cCy1WgXnfXSb7P2ap2vZxNJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652856299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UVdKqouEhpTsVLArNImglt2qIvj0ryC+fDBFuAF4r3E=;
	b=Q4RLdYlf0f0TkB8h3XzBZUf82NRJPfoTyknIoGWFYVjyZuIN4ILQSLozT1KvKE9I
	iAJKLbu79M6gYGf4YWxKvc7Xi4qi910zll2O55iB05L6rwcHnJuLG7we/7G2ux6zc9H
	CONU49egYIoIps3PMQ0+Tgl0WPWPoZM4qcm/Ljwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d5e99f0a-7a65ccab-0a73-4d62-9f9f-d23c4a04c4de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de9498623400948377c25e64e7a997d665a47ef903913084cfccc55cedaece0c
Date: Wed, 18 May 2022 06:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652856299
