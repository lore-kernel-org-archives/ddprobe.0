Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352637A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 07:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655363759;
	h=To:Subject:From:Message-Id:Date;
	bh=/2k8P537yg4U017lbRbdOxApBRli4AUdPB/Ybif79LA=;
	b=YPMlK2yVbW81tTdI5G9T6NiCiVdvdcd2rTB7pKG8mxyR5uYOXfNUGrSP7+sriGi5
	Vbjv7k2vlhJxCCigaTyseCrPDGcLXFr2SXeglccHvbb9PmgQ2NKWVoFzrHi2MaMMyqN
	ikBU4jWnNnL+WXqfzN5IDDHPgEEmL+QUu51w1rJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655363759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/2k8P537yg4U017lbRbdOxApBRli4AUdPB/Ybif79LA=;
	b=HuTqMsBZ12Q1Ol74eMDG6u6uDV3ToerCb3xuDNNLmbJMq8zcvpfksFRjX3ARq154
	TEVttdliN1iOi2WsUOMMNO1thEyU5IjCueHz1+67H3Ollc3WFYFG8ehSBb/LTfN84qd
	D00e6vKkeLtTpzFRvY2xCG5v4e+6lLAbNS7+hp7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816b5e6c7b-c5cd4278-6e56-45fa-adfd-f973cfd12efe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f23c8789d5dca67696430292b015e835630c6866012ab7dc7590741e93891138
Date: Thu, 16 Jun 2022 07:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655363759
