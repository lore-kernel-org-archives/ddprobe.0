Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB57184D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645696285;
	h=To:Subject:From:Message-Id:Date;
	bh=pY7MS7h2tkri6Xa+M5xpyXYnHByLlgfj9wWwFhagZ9M=;
	b=W4HoZuFt4T/8tgUH4aQvj9czgfoYnjhQkDzx4v+NGSzP1+yS0pg6SSDzXo2YZ2y7
	ouNJczJdCr91au268HZNgQwgGR3GTkAA5x0eueQKFG3AZEiNCT/74ootAALzJuYANNH
	PyhtzIWf+8X635SqHdIgDap4xXHwj7ZefppMWxk8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645696285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pY7MS7h2tkri6Xa+M5xpyXYnHByLlgfj9wWwFhagZ9M=;
	b=I304a9ADntLHOmZ0EQHiBwcRvchOB5sqrhP2bd0hqcyqMXbluRewC2JOO4Ci0L53
	J5//8ESNEod2zoIMkcUZNSZ1AQnEIxMDRp8ml1xzIfbO1alZQwfgyyMrHl6T2JNvLi3
	Tk05CtQ59BCQWUgM+/allHYTN39ppfsHeXmIhoz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2b24784f-b96dd6d2-e198-4a16-94b5-5b946e259a99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 748199927993b939f21837d1fbfcab3f5b21bc9c52ecb347dd546f19fd648edc
Date: Thu, 24 Feb 2022 09:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645696284
