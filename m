Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D8D15CB2
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660903853;
	h=To:Subject:From:Message-Id:Date;
	bh=DFAV3Dkk8I9ixOcqlSWHlYCJklmmsIOyDXWSRU4nzjw=;
	b=S++BOkoJ4IiPmyBvwBoxWhZuCBGT64uG8nCg7W5V/sD6xw4UO/Jp7K7YlT/EV+jj
	3+r8fDLuMH7AbH+6bX5u7+2C+iTtdfEThFf/kGvn1t147kzmiZo9svWxJEFq3l6Pb/n
	8tB0z7aXjTOALC2432dHseOiN1vWn24y5hV1CHBs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660903853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DFAV3Dkk8I9ixOcqlSWHlYCJklmmsIOyDXWSRU4nzjw=;
	b=IIw+cy1/7gEPsuu5IR0e02/dmf9V9fU6wQWkjwlYRHnltb2L2U498u9+U2jZMITb
	Ctoc7udf2OQlewAakkBibIOXQIBVYUjyfOGt6+Dm5YzFUbgzWI631i53RZFgz7LAwOb
	KgV3Uq2IaBlc4AGXb+3LhnEmjhDlupfypEHJAbSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b5958a21-13af5e86-8279-4734-8c0a-347d18f91dfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc3c12bbc1e52c0b25fe9df4ba256672afd144bdc5c9a8d64b4fd122ee4d049b
Date: Fri, 19 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660903852
