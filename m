Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DCEB6144
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647899484;
	h=To:Subject:From:Message-Id:Date;
	bh=lZsiiZM2CdEDOqPxASJo2KB99L/4dqeOg8I+RDcbsEY=;
	b=X8CLbBaCv/fteR7j8CU92FDijSgIexRWsBg2mBrypT+ybFSY9v7hboaSsBReIEWn
	nWxMslZT8wvXKFGEcQSum7dH+tEZMtfKS07IIUH4ED5891eS85/HQj3WY7dobsYnB8f
	77DgCF+XsYvhtkFVqA2Y9ksjC7uHwN0yvEyF/YLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647899484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lZsiiZM2CdEDOqPxASJo2KB99L/4dqeOg8I+RDcbsEY=;
	b=EB2IynA3Kf1/+Ln1wtPDgS4MA6Vs5K6VCN1SA/IWZwSAyFlPwRba9cOggzzVYOsL
	LT7y/8efCHHgGEuWmhmB/eowaCQSH1hs9ZxAbxXV1LDgvT/SGrSMDVeWjkJhnV/vm0R
	1cyA0H9hp703m/0dTFusb5Yls2IjZ/VskccqYshA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae76a2ba-0f4188f3-221f-45f6-8ac5-8bc579d6809b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34619c0f12738ffdfc3e3ab845590e0397f122974c7ce47adb7ddb3400c62499
Date: Mon, 21 Mar 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647899484
