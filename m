Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B417E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 07:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655708759;
	h=To:Subject:From:Message-Id:Date;
	bh=F6E89+DCk3mzEFahJ30T7N8glEw1nYzi/OVs2DLng8c=;
	b=ReiR70Vc1/cZX7L+ZtRu8NnmvKnXQ0pBnHln12bweANL7nWLsZDQlnHjleu8DExe
	Lg/h/HVFOc3RUQHjYm99xZwiU1N8ks1hv2+8zOl06Z0CPUCPRBQkU2O2H2brD8t0v3b
	eJ3wG00XHPEiBYFVHwERmz9TDL/AT+5aFctx0I4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655708759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F6E89+DCk3mzEFahJ30T7N8glEw1nYzi/OVs2DLng8c=;
	b=EimqU9gPKbccoTrAxQdVmIUDYLMurKzjNCvXoaRhavo6SbltIali1OCgfnCTt4iE
	RNapw3NGrkeQosltUl5m22qWmYpelh8BFRrdYdOnhu1ZvrneJiIdCwVxqu0w+wbIYOY
	AO9WKjz638DQx8i2cwBpmiN++6RbgFWWvWxRH0ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817feeb4d7-0be1f2e6-673b-4a42-9898-a93a0fc743ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eef616c4775779d039f4522308bcda246823f5365cd701be241ccc40bca9dff9
Date: Mon, 20 Jun 2022 07:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655708759
