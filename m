Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5BA4C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647612385;
	h=To:Subject:From:Message-Id:Date;
	bh=XBpLAYlWlzpQ6KBSpcB49BZIOWJeTLhgi1emiwNerO4=;
	b=A+xHgGfrX7F8Pg7klsuq/uX+IcXV3eHGQHJq6MqV5hkSE4mB8Rcf4fUNSUjf5PAK
	OrbB5kD9DzORCs4hM4QivwxHoS1FEeD3cZNLn/mRvb+qpwvmiM//XC3ZEdn59mvxeN2
	BPByyuZDTfDaEbm509Qs3xyF4cuH27GU/bDiySow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647612385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XBpLAYlWlzpQ6KBSpcB49BZIOWJeTLhgi1emiwNerO4=;
	b=QUxUVBAqUmIc6w9THCRLuIVZVL0VAenuJUe+5xJw4H84K+n46QZmTI3NIpYxWK+x
	bHO4pqV5A/qFWRWOI/lbm8VixnlCeJkRCFtOwYLyMmqGzFj5z+omHDJ7Qd4Jjslzbeu
	W1R1ZTFAtIEt94fMu/I/dZBRF6WmODu6dFwf0EgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d59d601-267d8398-5905-44e2-8350-70fca91cf899-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76777096ca4a09ccc097864306ace985b47cc7c982a18b823c9605483a9da1d6
Date: Fri, 18 Mar 2022 14:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647612384
