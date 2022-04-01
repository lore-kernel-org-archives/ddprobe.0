Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20DCED5
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 09:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648804918;
	h=To:Subject:From:Message-Id:Date;
	bh=ktWD3es0rVM/IQQ2cH6jhK+3XTv/GNr2i+x2dFCRZRc=;
	b=GKDx6MAMQzgZVkDCXlDn+xGPtjHnhNV6o9IAqNrCiMxN8++SP7IF4D31kIBGCMFt
	j/4bNPJbpa/rtewovJtEAR5dDgtu6H3jRxUi96c/V+zYERqoqewlcF+oSozQvAmuZil
	yQu6NNcZOhLGd/+D8KZQJmXwenk0HENT8dc1IywA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648804918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ktWD3es0rVM/IQQ2cH6jhK+3XTv/GNr2i+x2dFCRZRc=;
	b=KyrP2OGg49LS0MwFocCFf0jGzjDxBywrYoxTG0o91mERS8nEQJMcS8Kj9tArslga
	ipLzRVk2KtLkU4iR6uOBDPpxawNh1TgOwnMNuqTykk1zcqvwBb4gmeOb38/0QlfY1Cs
	R11gW6N4Du4+dSded90o48UAU5W+t1jiQyuj0Fhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe46e73e9-a2f832cc-1e58-4150-8649-51e46f171942-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8e07f9ba8fad5505152e39e0e6c1b6e44bb34d618c27221d31827a895ef78ba
Date: Fri, 1 Apr 2022 09:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648804918
