Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF7F7A
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 08:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650270058;
	h=To:Subject:From:Message-Id:Date;
	bh=4ErsnGqrIjctZNfxpDwNsT7QyWOB2Il5XEygeDXTrwQ=;
	b=BL0hRUb+60mDFypC/RROFZtkQ+napPyMtU717YqWzHeXVDGiF3WNnEGq1LM01FDM
	HuHw3Z/PCbCZ49MMYq3wwyavtrmprD0TD4xsVAWxjO/vlEAf7f8OBxHLQs+5fFipmAz
	vDSdJIgbss5cGH7kbvXvDHPg5YWlFTxEXGwo2pB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650270058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ErsnGqrIjctZNfxpDwNsT7QyWOB2Il5XEygeDXTrwQ=;
	b=duFyzm2eHAqUXi/fioXhOeIGErzzXFdDYZyEN78IGHmUhe7Ezz4s+EXuw15qGOpr
	YVaYjhov8W1nzTpXf6RptP3TLxdicp+nMmzSWJDlgbjy1WTMRmNMz1e5byjS7GgIvlg
	MdkS/dZajpNyyzVk4jJkeR9roS0kP7CKUSISg9p0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803bc2b74a-db3dc975-11fc-4884-86d4-ea1ec1f0d359-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ec95ba26671ffd25d0ba47e31e713bc52c1d23498455dbb4b8f600b804cbd3c
Date: Mon, 18 Apr 2022 08:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650270058
