Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1357C2CA2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656336412;
	h=To:Subject:From:Message-Id:Date;
	bh=lBZjiwVAkBal9FOtDeTFZYFJ4iquSxP6lzD2HL1MzCo=;
	b=E3IS0AteSkZ0l2c/+pyfR5qZ6Drv+P3WuVADIHHDu5e2xjtkqd7g2Dkf7UHRYGIm
	8he2zau6o92Yf2Vgxn42PYXifij1CvHs2UQ2nFYGQ9dqNbscA1LBErfQPcHUXObAg66
	kzPMBTTDReIPuGk5tIka72WUFH960sKRkzL+JH4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656336412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lBZjiwVAkBal9FOtDeTFZYFJ4iquSxP6lzD2HL1MzCo=;
	b=FTySDwbeEDLZZIwsyi2rxvykCsrbvU06N8sGoyNNdk0eIyqhv13XMmTHC05wTTqs
	Kw+N21mZ6gEUKtOESur+JOAW+zo9bMtCaQFR92FbGu+74bn+KsRxgerUiS+KwSHQp1h
	RuFCiDtDLekrPHcpNI4aUW0GCc/H/18DeZhCWHDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a557ee6b-c621f558-5ad3-4b2f-a1be-b2ae1818817c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b1fa01807ecf224fe72281c341f1fd8d0ff32122ddc13077a5abe556cd44434
Date: Mon, 27 Jun 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656336412
