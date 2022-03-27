Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CF27E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 10:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648378078;
	h=To:Subject:From:Message-Id:Date;
	bh=dNu7f3/RA+FJcpNtJDOetRmjD5ONNFkl7P/thJeOwDk=;
	b=MHPnvwCpYnyTDxXTWMZ0AiNJ5elQXaRPm6ZfPFggF5s+RJXCdn0kXtEkMeq6aDC3
	wKyFOP93mV8zvTayT5MnystYFfgd66nsUpx7Er75VwRGW/0L4nit+UMbxq1z7CzHTMB
	Yv+PciP6EnypDqe939Q25EUKj0ROsKEqlw27s8wI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648378078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dNu7f3/RA+FJcpNtJDOetRmjD5ONNFkl7P/thJeOwDk=;
	b=fLCdwDq6dNdNl9M+w387pMR7m588jaEh3XUDUAEpzH0abUOxj5jA3Gd+ltS+4puJ
	iwzxAzXcLxvhYBec9JBniWq3hX4QmqhzgBJgQrCgayMX+obbDjR+3rIk04n1+m0RWES
	EVbbREP8vcIYb4aD1p8OSgSYAewHAbFrFg/tnyJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcafd6442-d9b17c32-63f7-4ecb-918a-d476c8cdfb23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f3015a626ca4336d8204a415c0033d904e5ca02b9f4f239967aea08f8be79d5
Date: Sun, 27 Mar 2022 10:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648378078
