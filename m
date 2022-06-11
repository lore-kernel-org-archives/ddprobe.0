Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B297C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 17:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654968599;
	h=To:Subject:From:Message-Id:Date;
	bh=Rd9RUt+4qqwK3zDBFL/7DGlBcLRrvDC7Im3nW0IwKrw=;
	b=hahGVa/KqUD0EZAHifE3C9KY6NWquEY2+0fRcn8BZ/8w6R11Jc8RPL0vei/dG/ys
	AnpLFOpX3+tVc7LMNaBS6JElXNn9HoBm4J9P93tJWbElBElu9oXytnom6qiis0L4jSz
	vw/cJkuZzw/u48JJv7yaPxlV7paUjnDSx2N7/1Ws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654968599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rd9RUt+4qqwK3zDBFL/7DGlBcLRrvDC7Im3nW0IwKrw=;
	b=fhvHQXZoj+X+YtctGVxsLraLl/6SDHuoAVN9W6kB1L5gP+dcXPa3kJw7+eQZC2sR
	fpn4irenMHSncolQrT+Y0A7WWrqhjRXiDJ2uEbKPiDyiEi4OIF0s3vzk0BHjX+DHrHe
	qW1pRav+lwRAqJIPkeHq+BaiQ8BogjHNiLw2z68A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018153d0c2ff-7e4127db-6e06-402b-a9f9-57f2cad55cd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6817192bdbac853764b8519134dea4a9142902b4c53d0249d11962f481b43682
Date: Sat, 11 Jun 2022 17:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654968599
