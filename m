Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5ED1855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647258684;
	h=To:Subject:From:Message-Id:Date;
	bh=UdcMbSml7JTdSu2Xh6deZicksJgrwzmYxICLe3/2aTg=;
	b=DFOnDXj6sKs9AaEjFO8w8ifWogrfWbksIA3SfEGVhN61VdW0Q0oUnFZtz6AFhUkW
	0tL/uNGfP86lI0eKTVFnhBgMsLn4jJNdI+ugjzyu5tEiDDo79EbnjKUyZZ/Qo/9mcOt
	gU6vBIkJMQeUks4xs/sSIbuJN9qlC6neQxvOyUS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647258684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UdcMbSml7JTdSu2Xh6deZicksJgrwzmYxICLe3/2aTg=;
	b=MxVB3w9zIUG/DYB+Ka02BL/L6M/C6hzVEy5FK/6t5oV1AAKA8fNYUrVIrR3VDecT
	T1vo0+aZxrdY27o6OwMbo5TAntcdZ7FUwKSefygk6ScqYWOI3BU8oiWar40ZtUTB6MD
	j161FSKuE/DDuzcfA2As9P6CXZwa7Fh9iPoIXywU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8844cd70-d42c0ec6-79d6-4e31-9c9e-8f01ef61171d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f118c61f38c4ab52df07e2bae071d1567eaf348fec88629218372c159621da79
Date: Mon, 14 Mar 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647258684
