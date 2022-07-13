Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E17A29A0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657713412;
	h=To:Subject:From:Message-Id:Date;
	bh=W6H65IrwkOulnqRy6xezUcPoUFUipfna8cmXqt2Gyfo=;
	b=BhRjjHIbBoLayCPk3IGYNNI18RY+aabQL58bXv6erKh+PIlhNNuKsnvnQsdLQcgj
	IA4kT2JCKRufSg88fSL8OhwgtvrLHUsqfnAavOvGvIMNRrn/clVIgruoqGBIQ9AZ1mK
	0Zf6FvX16hIb5l55d86wkkrELsI3c7/dLRmfuwVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657713412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W6H65IrwkOulnqRy6xezUcPoUFUipfna8cmXqt2Gyfo=;
	b=BlDGPgpRxC35p6hw17VYajjzBmLETFBVYBDQMVw9WB2tHI2x7jSo7pwusGPjy6jY
	x7i8fPkyOg2NDzjbkxIAtPlvnvuBqLFJNlnvJ765gk5c5QPUSZrDNEHvAf8VgRGvlqO
	XGHrTvl1L9ScJzA6oIy+LKsQDpw19OqIJbjLgAAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f76b4909-b90ba4e1-8b4e-46b6-9af2-1ae171c0337f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 934246786689eb87ba4bd3c267585e0e0adce9f150f5f30bc96e9d91033c2fe1
Date: Wed, 13 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657713412
