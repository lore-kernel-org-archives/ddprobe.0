Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A9720E3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 02:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654743239;
	h=To:Subject:From:Message-Id:Date;
	bh=Hur77iqa1EE3suIwQRGCSyOBRSISZESUCLWFlTJ5Ba4=;
	b=A6snPwIilhqZ2FdaR5bGV87pbC0By3KyML05ZThh7TfMy0ZD0VIzo9A1fC3pq7Ah
	MA5cANFGUuoKMMSjhK0xPwb8IABJdw8S7Bx+vnUcha56afr8WI09hgohD0RvMwuMOIo
	qBBP/l9f18iOII8dR/vvjtIdaLo8mTS4KSsc5b0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654743239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hur77iqa1EE3suIwQRGCSyOBRSISZESUCLWFlTJ5Ba4=;
	b=k1DB52KRCoY/AShpFdjtECWYGycftlRl/wNEt3aXfzvHRpNqTdh25wq1p+E4E5H/
	C8Kma7aTj1CTHsrWw4OtOoGrv/lBHQaRSnANueBuydgxCqPdt1Lc/2YFMdw8K232nBS
	J1LutMdPJrUpQncRred0j/2qJlLGaTjmmO1JhYi4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018146620a4e-ce209a80-9826-45ef-a9fd-e09f49f85021-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2d46535fa73d88a3db72d383393889de7b878aa8a64604b97641f9394137550
Date: Thu, 9 Jun 2022 02:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654743239
