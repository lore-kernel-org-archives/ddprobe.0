Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8127E2F2E
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645188085;
	h=To:Subject:From:Message-Id:Date;
	bh=V8t3fXKmfAg6kmYqPV61P5yOAwUSmlaO1PZdTKMxMis=;
	b=L0t5GgVYArb71H/RBKvkzYTqRWYgxgckdtATLeFiO4uCc6T1IlZJ72FSFn+pb03U
	K1YWNRhdsC97O56D73opMhQXN2TieffKCRIZCzPAyBvk3/gsURF8MEzQH8unJrdzw3b
	P+6Cgbv1qOlQ26EdXnHhprUA2ubPD2JtpPgOTQmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645188085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V8t3fXKmfAg6kmYqPV61P5yOAwUSmlaO1PZdTKMxMis=;
	b=XZDF61kGZz2IjhsLA5SxkMQ9HAYL4a6u5kFCxHkBMPD2o58B6/bZPclA+o/L3TSe
	rEkMjh1y+VRghXIsFw1iKnAy86LFfKCp3eNdTgvApss8oNALDXM7mj8ZSCmc+TT5+0V
	+Gv1l2TPeKL2DCgm+m4lBJZIOz69k6o/j9TRC3Pw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0cd9f468-e29c6bfa-b6d8-4181-9c3c-a58fbf816e5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc965d77dda1eb8b795b5c852ae2c19adbf930ab1c30d582ade6bc16d54dd4cb
Date: Fri, 18 Feb 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645188084
