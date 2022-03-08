Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A6E48BE
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646740584;
	h=To:Subject:From:Message-Id:Date;
	bh=IqtHP5HdHfumsbAaeCp5ZQ93gtM+3otujJbgPN8BQ0Y=;
	b=GdMUQFveRTT9I3itsT8dNSUJbmFZuR/M8nWxgBstpm68gzGIIn+atzCbAMKZtjNr
	KnTmHznJnh1ZSS13xTt4S1gy7ceDTlDtqD3CsOR/IUWZi0jKS5nsOPZRdLgrCER0Jx5
	jjkF7w2B7AxcHnaF9+aSu4lOOgKs126LTUSvBOvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646740584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IqtHP5HdHfumsbAaeCp5ZQ93gtM+3otujJbgPN8BQ0Y=;
	b=Dv00icIkUXoHmfvjh3KCz2uxdHkvqxlHGZv8akYWQuYfNeMYhxZ5irNTgYc+Ybnm
	iQt7X28C0L5NmsSjcL/8dFM5TS8lBfCP5Bxdf0I8HclMmMuB2z6J3cu4utwUMtKsHpu
	r1EJ2nREeU+gUnrJDUT46oqe6pMEyle/6Rxyw98s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6963392c-ef2d260a-27c0-4b30-9b0d-fd142429b7bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d01cf139f877ca945b9dca81c797a12a6311e88ffbe0eb5cacb0bf1a7abbe8c7
Date: Tue, 8 Mar 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646740584
