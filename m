Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2F639E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658737012;
	h=To:Subject:From:Message-Id:Date;
	bh=M1qCxaKCP0NYKNct1xAjnBBfPFTcqxKS1SUMU54H5xQ=;
	b=bs7svosSmCfkuq5/po7uHQrq8jJQlV6ZzcaimOa7w6/r0elaKPCfkquOy+YUkGIa
	9dPs+rajO/ET/7Cb7x7dCVTBbKhCseZA65PoIpWKeHSzZTegZgYjgBslu+XHBNhqXc1
	Z3p8HkkBqyizy3E4xTlgx04C88kt7WeAWjacbYkg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658737012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M1qCxaKCP0NYKNct1xAjnBBfPFTcqxKS1SUMU54H5xQ=;
	b=Xl9nmPE0AWhPIjD4dxAxs4VXlhRqYJWrUpbn0zphfe0Zbqlp2yaPX7CMpK0Njb4m
	EawDXPkJjSIvdXQwN4mhKvTezUqfofblxCM3eL1LGqyFmBWxYG7AjnHxxXn/y0vLpDN
	b/0hmt31nWUIgXBJJ8XDpZqWG1RNO/dt468v/ZAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182346e2e33-db9e674a-3706-42f1-b65d-99a1482130e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f7183cb23e7d29d9a899651ca75fe99cc297c83124adcdc357cdd6e910ebaad
Date: Mon, 25 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658737012
