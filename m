Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62F07C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646487385;
	h=To:Subject:From:Message-Id:Date;
	bh=wcq46Yaop9f2dABmWFvuvRnr/YGhDcWSdlAf2vcckkM=;
	b=ApfXBEwq1Htvf75LczzLg+mPdOpvF67kRbegRfvoLfwFoE225IqDOCn9J76ju34f
	POjZQFMT0zxkbmj4OLqDDJbllfo/VC4cY8z3mBVXzKKtaUsZKumthSCvxuTLQbynxhl
	mstgAr3yRnLj/+ZgxSI6PZHY79RpTd9xGC6uDjZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646487385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wcq46Yaop9f2dABmWFvuvRnr/YGhDcWSdlAf2vcckkM=;
	b=F3OYU572nll6YQZJ+RkFlQDT1oJAmwQ2SgR31WecBnaWpL4BM93nA9oz0F1CHA/w
	WZPDIsnplWIivxi+RitbiB0ZgByA2B+IQj3RptaHnBhwnCAPTbDK7fzSFff1FpOcVst
	qhLeOScEst41vVJqccsh68+REfPDLERB7hA6R0nM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a4bb2b9-167175ea-4d45-4e19-ae61-9ac7e3540b18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b76fb5f25075927e2f27271eb0af1648f095c10a926a4de3ad71ecc796d82266
Date: Sat, 5 Mar 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646487384
