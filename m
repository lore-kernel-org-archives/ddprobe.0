Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591B7803
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660392052;
	h=To:Subject:From:Message-Id:Date;
	bh=emMw7js99PqHW+796pnTDKwZVST8HoFCaDx+8T/s+Ns=;
	b=juMLOZGSoHWBrB5e00cpxgIknLL9JqSvnEjJ0SucQplIftWxO1iYtICPwxi2P8XC
	3KO9GAqthbFqsp0zhw0V+jtouSVhwbU3no9co9PCCQ3V+ga5MVQLht3gIAyDh9yvT1c
	PksNK8K+n6u9YN1tpnd/d+kab8JkZ5G6iBfiQFVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660392052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=emMw7js99PqHW+796pnTDKwZVST8HoFCaDx+8T/s+Ns=;
	b=dldK62THqgdhl1kbK0sjc48PLLZ1t4tP/fPLEXL9o0jBXqZ4DhwS/2lni1E77h4E
	5qTJGJV+r1KssV0lILTPKz6uv6p414jk/pDR1inADR5NkgxB+rHD+/yQMGy57gpxBBy
	WL43qVnDTgAwZ1WKGCHoGpH9sGveoTVJ+hz+T1as=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829714173b-b2e86d56-3b70-4f05-8f95-c540a059dbdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c9487617a23384e82f122b4b6a154722f621500338aecc72a284182553e0f66
Date: Sat, 13 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660392052
