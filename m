Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B52010EC
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 03:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657422412;
	h=To:Subject:From:Message-Id:Date;
	bh=Ef8Ui1kr0wR/p7NOKBObu4l3nTNDc2U/EPh4zNv+XUU=;
	b=Db5gMAlgxOyhrJotpc8TuCAhliRILwCAGrKjCHAj0lAcjOYEABTi2BVLJZaSmX7T
	LSfqjVUZgCHcsJHqrq2a3iT5v/UMZV60fg83fwiZGL2g5TbQmw/Y/zr2bR8Bh4cW95s
	x6fPiV66bSrD0jv2lgo5Zgbw+5zy2GSQkgh7/8gw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657422412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ef8Ui1kr0wR/p7NOKBObu4l3nTNDc2U/EPh4zNv+XUU=;
	b=TlErQFpe9ohiBToHlgziyQiVW0vdwCvarcbiZvgpQMmlsgj/S9n3pbxF9jo8sUdU
	dzLf4tDNT0QkEom/UxX0EurK2m7jtPBzrUc2oh302QrKX9X9p2B+FBd6pZVznL9nvU3
	r20QDAO7aahgLxBleha8fjEpOC6P6JIm5bBbGCZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e612fa26-c9ab31cd-843c-41ce-aa5d-233f098bd41b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 145ffac12b23c95ba117ded89c57031b03e8425a6e089b205059c34e01af988c
Date: Sun, 10 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657422412
