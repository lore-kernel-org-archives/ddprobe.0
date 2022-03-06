Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070D51FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646568385;
	h=To:Subject:From:Message-Id:Date;
	bh=A2twiuLaiacIEyF9Ckn4IT2+53ITGWfWMMryis0ZY2w=;
	b=Dk0yTAAJ64B3tenmjvSJSelYLReq+n7gBkXwMrRPrxSMgl3rk5OyEy8o20zJuxUk
	TPZD8Zqm3ckyCdHKNmfprpsC++0K+Mjd74R7D7EfRvLJ1Fzjzt5GRg40FpiKjBe9E7k
	T8n0d7dTJE3HgRe+FHA/ET/buGUhP6YrWC5Sg9ik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646568385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A2twiuLaiacIEyF9Ckn4IT2+53ITGWfWMMryis0ZY2w=;
	b=hVuvCyWEVxRjzPCeJ3TJm5cJBFy+Jqli/5wj5nYWy2QI3CgY1oI1e66SOp+8Pu0p
	TVJ/mQaBil4kBEjApj9p+qVLQ+hntrNuAynGTDbLzhrYQ7ZV+w2OcOY2JrgXP3w35rr
	K4Gs5fhacHlEuhvY2DaoImxZVAhRk9ht/3QnvOMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5f1fa94d-31365329-cf47-44fd-a2a6-6c0f650b1c9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 000acf0a7e94921b1ef2aad07eece34a194edf9b5c07b647a09108101698a3e2
Date: Sun, 6 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646568384
