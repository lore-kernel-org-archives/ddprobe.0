Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703B423AD
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 10:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648203898;
	h=To:Subject:From:Message-Id:Date;
	bh=xrW412hTwoxa7NovcrWTAmbFmFmSijhkYk9hCjMcBAk=;
	b=RtwfHP8jJFPG1amoKGQSx9sMKKrE5C9SPQIwWWpT7CjU7fEPxoEGeJBlcI9yIafG
	v+WNc9KrLIG91Xsp/qIyAlIDkx2aECUWQwl4umLW8PEgNBi0vvD1Ww/lK4Zx0gN4Whb
	IjKa4htp09qN/L77rkEH0ev7+pUir41MxiGidfvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648203898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xrW412hTwoxa7NovcrWTAmbFmFmSijhkYk9hCjMcBAk=;
	b=NO909Q1RhBsRSoBAyVDkDkJlE3WewQL9gL2uleSEyfaqYxL5M66FqXWa4YAJo5A6
	J5FNtudTfqAR7kolkK4/PBXbIpZx8J7+fZ9qanQraoON8SLAgRBP0nxq5lDupyH4wgT
	S+bCTZ6jri4lz2F2nBcBqrxw5cDlTrjrQLMqLe+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc09b9dcb-75294e2c-40c9-48d7-beb6-d59d22f17a76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbd1312e65ede2f5491ba06c0cd5cef2e151583f7f346aeb57e48698d2b1fa24
Date: Fri, 25 Mar 2022 10:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648203898
