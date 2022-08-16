Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3963D7E
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660659052;
	h=To:Subject:From:Message-Id:Date;
	bh=IEL02ENeYYykxar/e+qJogT+7YF9r/SccHeL9I7sRP0=;
	b=clRppi3ZD7hkmqyM7e0duf6bci15nV/ZSn42/G5Tj0N8IZkcrrH/guNWn5YOhvxK
	IPo1eMLqMGE6Ycd6hh6LUsnnkJ+4mfrSyxe2lpqOw76xnuyo0CStAyTuy3kLijXpXVC
	SxSQDIyWvPRUFnlFEK2OvXJKYYtp/NWmmqXwLTII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660659052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IEL02ENeYYykxar/e+qJogT+7YF9r/SccHeL9I7sRP0=;
	b=kdNf25tfDOLx45lZL9h0lg/fbNJZQD9Lo78T+N8D5FsJTFm2F2iRKAdxfEQtcnKd
	99hKw9k63Pxa8wxmDG2ZSo1k/UYubb74agYxfoksh50fNZ7aoSfzpfX32KMjQghRroP
	oUFoIGGeAuLWin6C5NA5H/FOCn66I3NWIuXY185g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6fe3000-07b46b2b-b9d9-4624-973a-c85613ee6381-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd81dfdb76c49c1d1582610e3a38066ab48c155d0c3c4a745dbc0ddbb2405248
Date: Tue, 16 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660659052
