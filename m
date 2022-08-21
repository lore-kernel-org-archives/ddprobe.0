Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AB9646
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661080252;
	h=To:Subject:From:Message-Id:Date;
	bh=TE1sDNMkd5WN5rtUPTpdqBs0If0l21+gF9HemjuXxpQ=;
	b=CRrTzPWPg+0k4IoCN4uxPvLW1+kOrgsvpZKunNlnTkUx+sfIy/t6Xs7XIMMwG005
	yh4k6zdbvyLf+bW9zSG4mlFqdVz63eRjC+S3wxPONPvXJIa0a2R24zt7C+ntBUVZ4FV
	Qq/ixo2Q9pnVoXsaFs5jNJ2F8JATUVzALb+fkds0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661080252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TE1sDNMkd5WN5rtUPTpdqBs0If0l21+gF9HemjuXxpQ=;
	b=gMJxEoAT5BxEVSSyLBFd8j4teJR2F7ZHiHpl+SRRhR6+0umV7N46GveOyh4Ul1Sh
	NzSiQPWFQxsIxX7zjFHehPk3hkZ2XGDbtXaalsHJ9nwFjiHuAE0kkLJaojpxGRdc0Z3
	q3zXYEp+cyRaNjgcJW9tZZjV+x1XHZc28m/YPOA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c019309b-dae68880-1004-4fd5-9f2a-4479d89ed23c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbc3485153c4d753f3a99292e93feb45ef70ac8b76ced2722725e9d0ef973e6c
Date: Sun, 21 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661080252
