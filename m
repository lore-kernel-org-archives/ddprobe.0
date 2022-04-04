Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4F17A
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 14:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649083798;
	h=To:Subject:From:Message-Id:Date;
	bh=FGIuoDkO4HIM1CLI/rHOcm5qJVug/7jVF/big/g795w=;
	b=BLr90j2i1mzD9YKFp5ElyjZdxACC3IYsTkSfoDW7y61o0pvfntf3MLWurv1+9PSJ
	CSwSscDHxZ2wzjh6RcHGIWYGXZn12G1sRkVUfy0yHhNbuBO/nmCK+OUHFI6EPnOFBRs
	x7KcawOO3RsWPPf6x9ujSTEUsguisvDwYBdRMzwo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649083798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FGIuoDkO4HIM1CLI/rHOcm5qJVug/7jVF/big/g795w=;
	b=Zwln+ZhRdR56DyWDiY8gxdjxPjaAvFhhLd83/VujExvMvYrwLj89DC9g45sov5h2
	AGIShff8gJcQDmEgUKMrtb0cMfdaCJjCYaZ71bNSZlEhsH+e99Y67TFbb/pyMOS6fcG
	3KV5AjSUL/UHPLfH6SkG3DytVR36hXk4CJD45Lmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff50dd2ed-d0c014cd-eff0-44ef-b48d-a7c640143d87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46dbe503da433cf44253a902910ce2ad2ccdd9ea6866631d79f06ba39fd55187
Date: Mon, 4 Apr 2022 14:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649083798
