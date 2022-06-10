Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18547C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 23:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654902899;
	h=To:Subject:From:Message-Id:Date;
	bh=NS2lx1d0fKbfejyZf1bKw2VP0dXlF2tTtWy3b7T1Rdo=;
	b=fhEXiYDzFvTteCpdd9Zl8uua2qVArKsDPZHrux8evcuuOlSWbxGy4ww7L4FtJkcI
	ld9kJWT4n6A0Z+bQpbDbITGpAS/aDg/FgFcq5lT4jSup5YfK2wy1cXY0v/KDn6pVlLA
	OZrzTLuJxRPI8ktBpCS4BKhnyCvkCJNlFcFn2Mfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654902899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NS2lx1d0fKbfejyZf1bKw2VP0dXlF2tTtWy3b7T1Rdo=;
	b=Hk5XNz/eQ10zgKEfHTHV76vXitCLBSkMpLJsmC6yaoJ/7cuqdN7V/JT7dDxmZ067
	HcKC3tm/4YdJfHdUsIsRcDs1fUzg2gBXfK5ZYItelA3LJbX+69M+ij88VLJSSoKsVZG
	xsrTTZQR/zTCl85WPEZlwJOuopf0YIdGbDLnVt/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814fe64226-94936f23-4cef-4207-a1c7-812a682eda50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6ff065e4bf48a13dbf3d80bd363bdd8071e355182bb2cc0c977451a2dc08952
Date: Fri, 10 Jun 2022 23:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654902899
