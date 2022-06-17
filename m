Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E2E320B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 22:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655506739;
	h=To:Subject:From:Message-Id:Date;
	bh=8t12gQ0S8M8Sj85gY4ojVrVH1w358q/AuyxcRw1+eiw=;
	b=BGovsuUsgcXL7+HjSXp73ptzBOR0n+FSHKQaVlvzpI/lizJ53EUPUk0ge6nDPBe0
	AJZtMx1N/bMf3xLpMrYug7cksFpJnOj4zTKhNl0xEyiI+LGW7j8FD3Fh/GgIOvI4vJ0
	Np5QFUsH5kUFzkhSPFAbYzgw10tMEvrePsLw0+Ag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655506739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8t12gQ0S8M8Sj85gY4ojVrVH1w358q/AuyxcRw1+eiw=;
	b=bV/CjgVT+ddWd5zvbDf9jggVrhl4yvpo4H8egRiDEUCAPdEDF9Ds4EO1kCSUe4gN
	fFOzkU+zlSFKYDiHdFNd6FChPVAeWC/yQ+8vdBK+QLPVbzwuXwQyRkTGF6ZxWv5dhHu
	/W+KusXnCaKhg2qaI8YV0ULFkMtsQtWuj6GD+3EY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018173e42028-a910cadf-e3cd-43b4-b104-fdde1b122f7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 106e8fd63d93c19982811d16e3fe5837668d93a7248df9309f81cd7bc4833dbb
Date: Fri, 17 Jun 2022 22:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655506739
