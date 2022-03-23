Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4151360
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 05:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648014384;
	h=To:Subject:From:Message-Id:Date;
	bh=MZWfTbql4N6hvK9989Sb8f3xnhnD2tl9joZhMlWzTnY=;
	b=QyuiKFLfFdw46BgvhrsrgASMMyQl6nRRdCfMXNw7ptqzZm89qcM4/ZF3V6LH7+bP
	Kq5paiDsyCIJHHYFU/HqcOAcmsDS/0N6eaHKXkwRBsTIp1YTI37YivjomGW5gmvmRqz
	ph+tpL2nRsZ4flgr9ex81Lat1aTEs2MM9u52FWGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648014384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MZWfTbql4N6hvK9989Sb8f3xnhnD2tl9joZhMlWzTnY=;
	b=D0jzDGBvag4NJgOH2JMsIAv0g7FO8E5saqhk5PPwx0E/BGlZ4MvXBwH0JGdPmZjm
	kx3tL7V4xL3fZCw6UZbfTA+Sm6YLyulk5+tJBLmTx4GrDC4s6t/nKQTmGPbQ5CaJw4w
	SPUKdbPaPur/mpRVH0QsRcvWIi6N8MCwAw/bNQMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb54fde7b-e476db6b-f07d-49cb-803d-9cd18df0ff58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa7e2a2f9101f4591b54022d23ccb3b39cff333370b13782f19952ace00fdda2
Date: Wed, 23 Mar 2022 05:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648014384
