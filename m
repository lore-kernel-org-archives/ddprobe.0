Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A16EBD
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645638685;
	h=To:Subject:From:Message-Id:Date;
	bh=RkPahT3zE0rJheUi+SPn2MV0OeuciOvhSazCd66Ym/4=;
	b=ZReQyACNvcranGHIqeK45QVE+5ogZoT8u+DDWWsWbjZ3IOksdOVBylEHZ7FkOYug
	7j02iYj6JsnWjZCGplGCjseHRSM4mVMmVnJP/9+80pkWjQw2WubsH6jPgfCLPw3R2w3
	micjodSX5ZjRr3AnTzPLH1Out2DG++eyaxPLcrXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645638685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RkPahT3zE0rJheUi+SPn2MV0OeuciOvhSazCd66Ym/4=;
	b=Xqxnfn8nSFKDK63iGr+waZ9drIW0zuPbxSHKOy8v0tR49UAyJi6OW4HyvuE9vogE
	uvv6DgfPHh5nlYd5nUIOEf2bs0x/11she3bDw9wGyHZUTgu84vqVRfVS2lB12sQGoTS
	leG6Dwco4TpNar8IYDnmOy9MAHfeXlmBN+bXH0C8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27b5909f-1095365a-f214-46bb-a583-95026fe495f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad91b9b8105d484e4fcc371ba385f957bd66682a65b50db589cfab776262270e
Date: Wed, 23 Feb 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645638684
