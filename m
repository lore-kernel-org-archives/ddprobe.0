Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9A71360
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 16:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653494759;
	h=To:Subject:From:Message-Id:Date;
	bh=cMlIct7NXRRsBRCDtgplidCxyDlr8exPZ6xrFJFU2wI=;
	b=Ud4qFRellST8yn1xTGIAOjILYAs0BwCaIpzR6t+dNudFU7CX5Dz4lbHQWkIa5pe/
	5jAbs41nlb22kB4urVxF1jdJQm6cFPZ6LzF/mxMH7UhoqC1dVUCHWy1bpQTrLG/Hch5
	bRNvHc/xDWnJtiEElKU3hhwexF07ihIICXwms0N0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653494759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cMlIct7NXRRsBRCDtgplidCxyDlr8exPZ6xrFJFU2wI=;
	b=fhJ27XmK5M+d88U406n/SJnJqMnOtgbH5XIt/ISoCST/28DiWLaUBYyXxkoQck9L
	9gBoVv8IfOMKVxqwEVjY+ppfnmyN0yN8nqqeweHUVVb2+UvkIWrKLfs4csSiDHbK+vA
	rIaL3vDRNNa1bW8iXxpspvY2hNxX9JRVrQUcVU9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fbf7bf85-37257e18-9df7-4d0c-9b4b-22b06f7478ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bcab7bb324d614105772d790bbd5f305ddf4095d21daa27d7750b5729985b7e
Date: Wed, 25 May 2022 16:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653494759
