Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1755AEC2
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 10:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658228212;
	h=To:Subject:From:Message-Id:Date;
	bh=Td2q07VAylu6M0vnseF5xbiJtjH2vJmzsbcd+oPyxx0=;
	b=MGJDHrpr7Uc17FqGTGTXgRZkxWlFWQqcAwecYI5hkW357342EiP5NrZ7tQMNzJe2
	NYri9EiOC0uoIPOnIbpPhhFgCu2dFLiq8Vj5IpDKBCL26/G40TRXD3sC5KTNx76GLEg
	pgTuYkzLfamMck5xrjLjHWpiNBoeFPW8XjoMoujs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658228212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Td2q07VAylu6M0vnseF5xbiJtjH2vJmzsbcd+oPyxx0=;
	b=SRAm4kIBN0XKrEThLntbpv7iGVLZoXdWnc4XY+iRhC6NZvBvWDvdNkgubwq1fgxi
	lF8g9lzLXPFXXjwhkJjbwRiP41UP4JGVsQa+WXnZhSjiUjklYMSdBjqacslghZJ+AlH
	RzmsQZECWfWd1qBxsuINYcay7LACw8AAplLDhlNw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182161a823e-65367b91-063d-4d52-a102-61f3a6afcb4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efbb6fd2cf85c9d742ede9bf10088c15782aaeb13929e319cc4c8efa290f1fd1
Date: Tue, 19 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658228212
