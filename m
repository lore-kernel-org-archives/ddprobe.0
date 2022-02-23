Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35FE6ACC
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645652185;
	h=To:Subject:From:Message-Id:Date;
	bh=pM/R4OfUI5HfabvJHE9WRHCD7WbHuAx4PtUzdWxoShw=;
	b=ZHc3xFOKm96M3tKambR0emMufCxUOGkZe/4SsqsQNCq08iz/Dq+HLPrhGJjVbnAz
	To327JKSUpYSilq2EoWYsRScPDflONVGHiY98LcrMHU6gho1MyM2ez/BmEyz5wuUecw
	A5inC78rcQwmNBzQNIXZj2x0OFXD4+ZaKOf/gMrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645652185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pM/R4OfUI5HfabvJHE9WRHCD7WbHuAx4PtUzdWxoShw=;
	b=dGtbb7yAZLRwOXN5YPXTGQ1pcVeekh6iZWvK4zNTA3w0j96qsNMN+uZLiBwah4fB
	6unYL2x2yyApZymjP4DyLQ3tbtBfsPUNKA7YajV7KmM2ePc8fcWPsG4vwyr+/qgKntw
	rrKnljDEJnXxMbk8Uf85S8CoEqV20rMFZ7isu+X4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28838f5b-0a6a0f7b-d12a-4c54-b8ec-f069d8eb2771-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f829b01f82922157ef9966601a950a3004cc9a1870f14edc9391594aa6565c1
Date: Wed, 23 Feb 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645652184
