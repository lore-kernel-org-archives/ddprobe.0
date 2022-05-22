Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2692579
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653222179;
	h=To:Subject:From:Message-Id:Date;
	bh=wcgBdDhMjkjYFiqZiifi66LClJHtUQHalC5imm+vyvg=;
	b=TU6Mc/2HHOmJ6L4VhHSXcRKSkmLDtnK5mhmQPEHYnOnvgqmOtjM114Oh40/BgwC/
	7VTOTxr/6TAm1wfCjrbyQxhATl9PbUhkKVTr+69CSTe9Zy8eWv8Y+88TnKMeCDJgpmk
	l6RXLf3TDYeWS2RX7XVNP4ONAzQ5oTaxnnd72RhA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653222179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wcgBdDhMjkjYFiqZiifi66LClJHtUQHalC5imm+vyvg=;
	b=YBWHrpkN7EY7PcK2CrFxMGfT2nFqnM/ZtpFtGRl/eGz4JaTSk/4w0oMMcFnXZZss
	2OpmyUb+udqUcwlSV2Jq9shhN0pC+BpISIBD0lRMyoCF1KyC5VQHxm+CELBRDc331Zk
	MyLU0sFE7NlUEIIi0WQfPyUUXOC29EdK57QvM15I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ebb881d6-5cad2618-6152-4cd1-951c-9cb6c33ec830-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbe2397e7b0e1065cd17f315b053e34b16eeb741ca2b1765929188e7eb0d5321
Date: Sun, 22 May 2022 12:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653222179
