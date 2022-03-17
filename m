Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AA72F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647478884;
	h=To:Subject:From:Message-Id:Date;
	bh=15BkG7HIraATky8Et8SSpwKPw1IWjBghMyhh2O0U7U8=;
	b=S7ikS2hDnVWjLBzF7RkKlfXWxampRGWM8EadvQy7JvesAatYWZ8AScG/H3XnOM6C
	sE1LKDqpUplDkRL7gLYkgiKpq16sk1L+YM6ikEKIG/18+e4L+LJ7eQDGz1h26tPdV0b
	tVrhhAWLkJY+MDZ8pSasqvfHRxgY8B/mIVA1f73A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647478884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=15BkG7HIraATky8Et8SSpwKPw1IWjBghMyhh2O0U7U8=;
	b=fV1Wsxq5hE8AhatZ4I3QUiTC/k80AQ3MtLJkpL6jWBYqFu84rTC73+JE1u+xyN8T
	4qP+0NYWmmDbAitMU2Ljl1zNDj9xNlMO/IG5pogmbqEsj5xa+qTlYVD378FafIdU750
	cFXjnBksgV+bptuBbnoGV9nrbZqyAb+EdT5+8mEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9564c993-cf903ac6-4355-42eb-b79d-b601b82f7e7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6fb947202597d66987c6e99b1ab5f15090af1b75d4612bd1982fea77bdb6b31
Date: Thu, 17 Mar 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647478884
