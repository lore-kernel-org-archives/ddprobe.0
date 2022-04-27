Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D130652
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 04:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651034638;
	h=To:Subject:From:Message-Id:Date;
	bh=wpkI1DMfoEREklPnOnIzeQzJx9OKEQinSzDJwSqx0EA=;
	b=PGpFheC6b0OgjLVMRU7252K3WQxBznLWown4FZM0AmeSjVu5iFezUcSRkarTsYFy
	STPzTDOyVBx3+Fdq0eOqNrCZFo8Ta3xNNnZeg9/HlkrhffMrEuvektCUXjeP5d9/XXw
	Mw3hdRQogTNF2mpDTcEf2M3YK2GACFmHqjWfC+mE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651034638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wpkI1DMfoEREklPnOnIzeQzJx9OKEQinSzDJwSqx0EA=;
	b=BgmYS523pfO+sRKxLmmZHWTf3++etEvneWickNuDl1oeMKk5BYs49nwfEGTa8vY9
	ICOZvLjLRFQMfunt4p+tthIdX4zNC4yx2jmEmR2T7BqEQIPG86A1KPvm4yrxy7BULA5
	NNz1G52DMOLxb1BcPNQtsAadMePQ2+U08p56warI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018069554796-50bcc490-64f7-4aeb-915f-d36948df06e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10c59f744cb87f4b0ca56ee1cedbef17710c588e2ccac7d10e1e17e026bda0f0
Date: Wed, 27 Apr 2022 04:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651034638
