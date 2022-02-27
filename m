Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B184A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645983985;
	h=To:Subject:From:Message-Id:Date;
	bh=f/629RhlVfu5YWE6S+JkErJFbD5GmXb6Z6L13xj0ee8=;
	b=E0m+p0U2uJGPgziXNslxJ/zIgs5dV56n7dqy36zCS5s3dT/dNL59jRzPyxuy6YER
	fIvgsuKyLE0tsEDycB2ZJ3ZM1ELdKIHSv5CLZ5vHUrXeLzMOpxrjsh23I3tz0VV2X+o
	fvHY7QmH6ls1HkzbqJSFQy49a3LqqLHS84U7dgeE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645983985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f/629RhlVfu5YWE6S+JkErJFbD5GmXb6Z6L13xj0ee8=;
	b=ZjYoT0hV3aMNX3CxcQ7qJRAD6Z+iOuaoYinnEobYsMtNWdH6CHakvnpHI66iMRCx
	Ulw7vk952C6Yp52wg56p+krKjw8qSj2Jw1w4PZIslUEogKONUj17yCi5+vca8ztYGPz
	CeDMk1mZquHhvtx3zq/xajYj/pGhOlMQyTQpm5mo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c4a6c77-f5dd8dd6-c3b1-4b88-bb96-11c5681c3893-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcb927ca96790d6667e7ee7a7764d4c403da15b83a0c89cb4e01b2bbc19a9e2f
Date: Sun, 27 Feb 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645983984
