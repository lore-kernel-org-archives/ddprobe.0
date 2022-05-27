Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE511FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 19:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653681359;
	h=To:Subject:From:Message-Id:Date;
	bh=QSJIzAtnmIMwgAVRSASa/nvY2IFu3PNsYRfsVKzKAPc=;
	b=Npik8iJ0jTKv5gY7NZ4KeNf01bP4zLfTRe4Iru0Ma7ZxMt/skuUCdWAnEuURbXYx
	2SL3NiwGTOHJfQL9rEkihUEMH2fgCjT4NbwJDVu0hUfpb3GJgKrFDZNwV1g6okvaLi9
	SdanjgTPLFk8ipsh+FaJn7dOb2FHye2QaSxgOpm0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653681359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QSJIzAtnmIMwgAVRSASa/nvY2IFu3PNsYRfsVKzKAPc=;
	b=LmpX524ByaxIjUKhU/xJxuDI0DFdVEh3VTxH00bCV+JrBoXWtqFQeERLCD2fscg1
	QTsfpXdu4ThRlx3x+01qz6LaKpUMzysUgYje8/iuudba4q+y0mtLcG8qaSPt+g0SaZz
	2aLqroe4EaNC4tsgGv4dBWSvLPjDxFZ2f0pHu/WY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181071709a7-78532be4-f53c-4919-866d-981fa9271095-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33efc39e17a635c7306ecd39fe894b0652b6574920a2c9eb450ebd5a8c3b8382
Date: Fri, 27 May 2022 19:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653681359
