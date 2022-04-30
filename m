Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DECE1FD4
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 19:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651347178;
	h=To:Subject:From:Message-Id:Date;
	bh=ZQzn7z3IPHIa3ADd+cyVvksA1MYB2WEdYfqkV61icd4=;
	b=I8903TmzcomMbqghnLDIQEoynjee6sqF00bMCyfdX/mRK0Foaog6HfcbaNeoAsGT
	G7N+GgbuUu+wD0Cn0bUup3s2A7yleNkd1ca3ub0xkOuK8w7B/O2mhRS9qqsynzHg99+
	EWdi6DdaehJxW3F+E2jlHuaav3CvfQOUV1qaBl6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651347178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZQzn7z3IPHIa3ADd+cyVvksA1MYB2WEdYfqkV61icd4=;
	b=iO8QeHDy9nR5Nn0WXZFhFCLJbRwN3cygh+cZ4VazoUXxw5HkXnA79zoz01ErkmSh
	Cvcy6DVx44zoL0w25bfpLhDztK6MjsULV1PSuaF1fM1g4tf7IU6Rswe6hYD0uz3waBR
	dfevT9rfKxSmSD3Dx5MaNA54jX5wt18vfpEpzp2w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807bf6430f-a7860c33-e6e7-4941-92d7-576b49222129-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 576faa82b75d8e09138f8220855351108ac721c45c164e3ec6fc4880c18b79fc
Date: Sat, 30 Apr 2022 19:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651347178
