Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EA037E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646995284;
	h=To:Subject:From:Message-Id:Date;
	bh=0qE5GF13bRtFcoMHBoseZ9cXkn3shZWYa06MjXiNp30=;
	b=X8FIqUmI+qVOUacqdPXjb2aQ6N3OMiho/xngqcUSC825grYy6CM6+vVDWf9+hm4s
	QCvSWHB4ICOPg0ReQEa1X/jL3llR9nEVDMqamV8pWIBkeqAZ+B4KV6AHrCqL6KzZGQZ
	EIhNEmg2E+C8GvRBOaufeSNcHk58vC18YoDnB4ZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646995284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0qE5GF13bRtFcoMHBoseZ9cXkn3shZWYa06MjXiNp30=;
	b=ga8h87xeARrCMZLTpXTmjmN1wkf4+W0uuG1adp9iC0XD/oqa1AUcWwkNGzv7vLHS
	KfAUM9cAOXL1df+b9pLCeNr9jixSrQW75Dq19o0B3pSuLUgHjjVnwGOyHUZwZ6+2DN0
	z3d5Quo4bu6qEHKC2tHlvYi5Er9XPAuCFDeXdfMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7891a33b-75534792-c759-4f48-be15-6082adb91e95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b61c5a39112c6bb6504c5e6b5f356775d20dcdfd276719b3566eb2a6e08ebb1
Date: Fri, 11 Mar 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646995284
