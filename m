Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584D515AC
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659257452;
	h=To:Subject:From:Message-Id:Date;
	bh=zKa5J2hJqTCnkhsXkl+UX2Gx7zvAj1sMafDe/GUm8Wg=;
	b=HZnsj+S5uA1AAzp7clLHPU4XELgELVQ0Fhb3fKzPZbG7jCXhttbGD0Pni7a8FT+C
	UiMP5ms72JiqcobTCEvIHAktitH0PyCcM6dHYPPJmo0DbLr+TXekUg1jZxTD9GkfmXa
	uiYeCbIVSRR+ka4NJtyzOeEXHoLHU/AnSkwnn/C4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659257452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zKa5J2hJqTCnkhsXkl+UX2Gx7zvAj1sMafDe/GUm8Wg=;
	b=iNlchQMswbWWO259sr7qKZAlS4lVgLJK2+JjO4JnrbClsM31xGxpH2X+NWhFCTx/
	maObA8RqyiiLuv9HEbOKC94gja0SjZovWTEKoaDq3+3owSWJa7sv9Gl9EHcCrF3g02J
	a3Wv9dYiEJpXC6bhtgn+Co93qhxdes6k9HjOug10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825373780c-3f6874c2-6022-4675-9880-894499812cf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1a27936ca37a09cf1880c73afd719901bce12a46e6d968d434d0f5a598b8616
Date: Sun, 31 Jul 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659257452
