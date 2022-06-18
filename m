Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2975D7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 01:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655515679;
	h=To:Subject:From:Message-Id:Date;
	bh=WzxwiocRHXsmqbD134mfyqZRk3BXVZJ4i4TGw04wQSY=;
	b=Fab/rfMDYgANdRSWvpordbNPRRQdn7zmv6Km9WI1t85Vsk24e8S7O4X/fN7ywMi+
	H/1FHyJ6scuO1xTrEjbZvxnrfgkzvl3oXQodnNTOxiqJpFx9Gfk2kOvh9Pp61uDkjne
	jo8UcLrgcrA9G3DQj3QkPyPwJFnn81O7ikJHZ4og=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655515679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WzxwiocRHXsmqbD134mfyqZRk3BXVZJ4i4TGw04wQSY=;
	b=OMqrkqOtkjgknwhn5xUmOm+cS0kfKXUPFXNXb1hsXs7HNqBq72G7jcfL+VNgjGa7
	i0/5gUn2HVvYwh6OmSpafuw0Z3G+mWvYz/7KTHraQf4wPgzVSDZAVzmpN9XHEL2Bgxh
	64mjEfb1lc/+8Wd9qgkeu76shZFhUsYTot9QcJ1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181746c8a2c-d0386647-26b6-450b-8005-54a157f8282e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e5945ee8b554b59f940f23d9f0ef2a2569f8d49451dc44ab210fb2894679ff0
Date: Sat, 18 Jun 2022 01:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655515679
