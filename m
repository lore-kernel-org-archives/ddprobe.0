Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9137615A3
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660862453;
	h=To:Subject:From:Message-Id:Date;
	bh=C8yNG2BXXLtl+n8TNJZ+3EtbyTxSPwva63W9OhOGTlw=;
	b=Sa8zzUocrNsF6dzLV1yqklyOmyZAzTxtJbERoEGm+MS1BDvBhTDk6oHWIwXDbTFj
	1M3DKO7Wvy+ubMP7FwVHyljQwFhJYt0ujtWQ4NPhi/55GyfzFVppEcz/9lE1IzstTYp
	WqNp1Qn92TulT/C1Mcp1JzyJbSgmf2zl9Li6wtFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660862453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C8yNG2BXXLtl+n8TNJZ+3EtbyTxSPwva63W9OhOGTlw=;
	b=fhfSHkmuMtsTFWmXui1X4/CYXtxe1RGY5zKvNRIEEcAD8Dxn8m8INiZn0vKGZOzC
	jNTZ+VLL9cGfrYpz8hY8eIKMNNacN+KqhmHYfTKX5AKDgGOuRTPnEzNDFhvLIU3p/GR
	EeaMreGqEscKJGtaQRqN8w8wHDC80ftOMwoCPO+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b31dd356-a4e91baf-7454-4f71-b4ad-2b3e3f22efff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9848d8530b8df1d5c29f0e37cad110d49b00bb87e49964b0e983830bc2ab5d61
Date: Thu, 18 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660862452
