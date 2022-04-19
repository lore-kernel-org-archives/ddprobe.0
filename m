Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6571374
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 17:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650391138;
	h=To:Subject:From:Message-Id:Date;
	bh=Emqp1iSPHpntcrfbgoV49R1b0FTyyF0jlbhAz1yUj10=;
	b=cy0f4QTks5NCAMfd5p4zaq4eCAfH66/uUyETEkXgYY6N4EBCQiwfY08tE49M8+9c
	X73Y51qNkfit5J/rJgpeqmYvOkybU57wi/DXTwbCTVvbGeTuUBQf19ugsDwmbjmQuuJ
	eCOMcXVjmDazf7BMxIV+3ekB27IMQPraUdE35uOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650391138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Emqp1iSPHpntcrfbgoV49R1b0FTyyF0jlbhAz1yUj10=;
	b=CxEZ8pzYwYtdioTwpYKzsBiUlZjbanID7VFFJzh2XUfyz1rTQJOmcpGxb6jSl/MN
	7WMkgCZ++DN4SJNciO9uMsA4G5oHnx56yWEcFPM3sSOAcvZb6AmqNtbg7ihPzwWWuaf
	k74oJOyQKk2TWXcs99fO0cxUVjDK38RpBS78zYQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018042fa4008-b03638b2-9d72-4e69-83f0-01e1a6dc6e72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ed8327ef3227469879439b3938ff877203c892399afbf10104d7b7199e25df3
Date: Tue, 19 Apr 2022 17:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650391138
