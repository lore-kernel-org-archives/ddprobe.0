Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACA333C2
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661188852;
	h=To:Subject:From:Message-Id:Date;
	bh=L64iH7c4SafveSX7k8l0ByhBFgs/QIDrIva/xlZirBg=;
	b=a3E1pv/0zq40XlM50m7nivelkQLygMIhWcWvtm8h3nDGNUH0fF1E3lxVD0BPQ+KH
	uDds4ftN+Q3me926R2zqQrIR3gMXjw0UJ6GLzl9Fkz+Se5bMMDiXkWCSLoPbVz3BuF2
	jPAm489GeU2TSSqCL4CQqE6Q0mdtxLdzzeJFTDik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661188852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L64iH7c4SafveSX7k8l0ByhBFgs/QIDrIva/xlZirBg=;
	b=HMaXO2YVveV0DOmiMCEFfdYKv7H9nZlMr2z9Ynbk9zxSdtuj/WBAYImgaWhNJWCg
	yfhD7ruka5zH0MWCjvLmSRkig9X2gfAO7bmoA/pPCbAPgJ9egX+4hL+q5pBD8iROPvf
	Vov5tD5m+V9DQLkILNlyAunpI/a08uxhaWRoAwcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c6924b46-0d5ecfce-9822-44b4-af8f-e05de9ebcbfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: facf464c49f437da0dcc09189ae0b6914d3b93f5d6f64ebcc9bae4b9534957a5
Date: Mon, 22 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661188852
