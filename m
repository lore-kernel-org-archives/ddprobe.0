Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301BF7A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 15:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649951698;
	h=To:Subject:From:Message-Id:Date;
	bh=Nin/+coxz+fR46W0scSm3eEjvH9U/QBOP44IlpzXQc0=;
	b=MwnweVmAohbUSKAidRVZtIzyQfZiPrGKloG2wTd5oumJ8JHmPlo2SeuD63PfjHXH
	JiNLR3sboEAOJ5FmV4MYOmPwVmlJJXjO2yj5ut/8dAdZs//dNZywm/k/GR7DjUDZEY1
	KPQexZi79Rkxq9t3OX7tQ7z9Q/dGL2AQD+FzxRx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649951698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nin/+coxz+fR46W0scSm3eEjvH9U/QBOP44IlpzXQc0=;
	b=FVSutxWcigKIsrQNNM2NsgTtkcmPF/p901NgMEPVec1OYcwJeAvg+Fgx6DqAYQyT
	Mrhro70K12gUGl5AkQ4QMEUV4w/XjSe2v3JjvlbEsHbbYSCkUAZn0l9cCeQixdfLRB8
	M34jFeO4nlTaPAKytfmNGJse36GTl+sUshc1jPJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018028c8ed93-5679654a-fbd8-46ab-86a9-0ae93e9ffa93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa19ddf940fdd50f9eb789f81d3a05821d7a0cc93a00c193ff8f10656a50e932
Date: Thu, 14 Apr 2022 15:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649951698
