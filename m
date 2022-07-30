Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F1423BB
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659166852;
	h=To:Subject:From:Message-Id:Date;
	bh=84HGzzlILZ2ghjV5wlvQNaMDZrnwhlDcLJYwLbRmSn8=;
	b=SFheYYwZDUaQnM0KNy8j6cqV/pcQHvrF6h13D5HbmzPeeQntesIitjZ20NgmFY2v
	10SK9mxOr7EHyw1AoRH0hlQNMMK9Kz/enyniphIkSdPLO1zSoJN6Cn6EvHmNJhWiQZi
	GM0uWlFRDVN0k0EGYHoE0CQbvhw2BZdXIwkmcoWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659166852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=84HGzzlILZ2ghjV5wlvQNaMDZrnwhlDcLJYwLbRmSn8=;
	b=bNGn40j31n6RH+2QkQAja7IRBQpGTRGbvCFDmNQYO8ZBtbKGjwqBVlWZb8J2Zk1I
	cF/D5pQRUOcJjUxAnW0Li+fjA0AbWnerQ5OPl9OqFsIdFb4NlBMdFUdkFuALON/yI1c
	zSEodCuROCo/+0ngr/7CssPSj9ERZIIF7SUdXO7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e0d05f7-b08a6f74-638e-4fb0-9baa-f5ad2bae28d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e2b9444d57c73fb29934c39af5e09f424c9dc342be370cd597fec550d8046cd
Date: Sat, 30 Jul 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659166852
