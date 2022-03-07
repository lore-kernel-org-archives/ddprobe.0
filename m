Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929554350
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646689285;
	h=To:Subject:From:Message-Id:Date;
	bh=gPnhlrj8GZkrO9KZm/XK2YFhYB0LBniAMEK15K0Yoto=;
	b=A1m1jorlF4JjWn9o2eC87OKPLQnwzKkuTNOZdqRT1C+9dRu7Zy53z1+aen6Pkt8j
	zhate35y6gDWWZtcGHhVcO7qhkoivJcSlIFQ2JkMA4jtF49YzZGnvN7QocapKcCJX+J
	hUyBM2S5Hzpy16AiCHl0BbtHrWHwPIDNWpfZjMLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646689285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gPnhlrj8GZkrO9KZm/XK2YFhYB0LBniAMEK15K0Yoto=;
	b=aphXcyCFliYjvEpKeL/VBtSQgfCmBEWlj+1o6p/TL/G3cQi8KgFr5huK14vTy+fP
	gI3TRsWHK03lHpq2kCXwiMTbQo/eyJuLa0Bfo/qtHVDRLqOA+5Xkq/+/IzXdsPZ03vw
	nJmaSlkV1uL6CHeqmt6bIxWD8E4RMDIiG64Zzf1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f665472b1-92cc76c7-82be-4c70-9a84-df653fc059ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 844d28730424ec42dd8d7d776f9b9a9971a36be3f9e7d068b2b2cdfdd56832dd
Date: Mon, 7 Mar 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646689284
