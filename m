Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4E762A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647135684;
	h=To:Subject:From:Message-Id:Date;
	bh=TRSmfuzhIpGKljbdu6TfsvPuM45wg/uHcFkP4sQKba0=;
	b=IvCNZ1Y3/PFHBV/fXsZ/EEljChiK5jodR1UWHjgBr6PmCBp6v69WBVWkPuTUDspc
	WT3dhCNyWxwfaIOi3BfeSA+EDOP2ks0xEyqBhIWU/vsq+qabL0PBX32a8zY061NQuso
	hsE99Qn7gTnoJBlYonrVdNQOpqsuV8ymCzNfE++0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647135684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TRSmfuzhIpGKljbdu6TfsvPuM45wg/uHcFkP4sQKba0=;
	b=IZ/I+IwXpk10BIOLo3R5/ldseYBLQB5tA4jGVbGO4xlLD0OCCpRIw+H66Qyo55s+
	ltOUxicxqZrO5MmfDZ2+H2pXzj3I6AK5u6T6ZhPlALcqhyWp6q4f712+HMBmSll8VgX
	ovsKsjDhB0l4ih33bT5kY+mmFHXrm+TJR3uF9ZxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f80eff8cd-3f0a860f-1d61-46c2-8884-fe2ed61564c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee2a8fc840d24259a9b18ed93cc0d93d799a2d58b45eefcdf7be06231b7c2c28
Date: Sun, 13 Mar 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647135684
