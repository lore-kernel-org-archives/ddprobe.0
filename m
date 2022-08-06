Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78271C04
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659801653;
	h=To:Subject:From:Message-Id:Date;
	bh=4BgwGLLh0klLt6eimYjHmKgEMUmfc6EQyFZlfxw7td0=;
	b=bLUukNtyqhaLS2WzCpmXK5rSFqBJHPLXexy/alKP3oWibnRu1rllmqP2iqObzAf8
	5bgp0dUSfwjRmmRDzsF9xYSuOQJwp7Xw3rFMZNmp1ZpDYsehsQzimHuCX6bogQc4p1n
	AKinQPHR15YuSr+W4hPl1Tun/TamFjEG2NPl8SSk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659801653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4BgwGLLh0klLt6eimYjHmKgEMUmfc6EQyFZlfxw7td0=;
	b=VardpEzoNd7BCKA2UGf+ItrOKBLwVZtvgDQ3rVybtp1Ut1Jp+oS/l9cCkJpBXfh/
	KfhvuXeNj8S0vOAufSRtTEqho5whqLuA1DxHmuVSf/Rgs3IIyhrIIOUtCa1iLqiCBl4
	xvYGZufTIR/tpTcoOl3fAvaQqjR2+b1/ymAzUwys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018273e34d79-5102179f-7f08-4218-84df-d4b5f2f3a960-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4cea48c2c1ae8cd51246d33aedfa328e6e2d5183c49befe9d944a373c842f31b
Date: Sat, 6 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659801652
