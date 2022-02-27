Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE967C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645937185;
	h=To:Subject:From:Message-Id:Date;
	bh=iTtPGEB79avVQY/wVKpZrYek00lEF5Uxz2biQB7xMkA=;
	b=b1SrIWGZQ5E45HQAuMLAbj6To+ZmzRVJ30o2CCLIGMidMiQJh1Lw9FfusGq5DlFF
	8qdM7FSwfCb4H9w1Yo7lReC6ohHXilq+YLToNK4Fa9gu+c4LKmdKXG/Wz39QBW+9KKa
	+A+FFXAAy6qsdYougKmg4pvY0O3Ar6TkTwrwgJrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645937185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iTtPGEB79avVQY/wVKpZrYek00lEF5Uxz2biQB7xMkA=;
	b=HJ6xpIXUeoOtC5DrTHoqxem8RzXlsMm4zjGVZgA3jROK9TWMlI0J9CyN98FBXYKG
	IGkKbziSrv2nQ5R5w45vUPkrf0K5CkDGQh1ZOmuMSfo7/3HToXuC9LIVGVZ9J7dmTwa
	BdWjiYsoZjnu9TJnaw2UWPwoN/pxTM6iIzMvvdyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3980500c-59a8e9c3-859a-4b79-b938-50fae789c9af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 729c58ba1c6c59c94b760a7d313d40d550911adb7d9effff6533ed5086986241
Date: Sun, 27 Feb 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645937184
