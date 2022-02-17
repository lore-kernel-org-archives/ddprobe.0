Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3863B29
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645115185;
	h=To:Subject:From:Message-Id:Date;
	bh=uKvzDj9iKTPfTL8ktMBpKXdQmcZpPn004FmAviZ7SyQ=;
	b=Obs0KixvSHZYaOy/P8NiTGkr7XV6yo/32pZSm1lDvY1lvP85L6y/gkhlJoZgcpLx
	nMT+BQ+FSRu0KEZHd+JLX/5yGGnIaw1hYi90gayvg2CtqPcnVF0fShmtUDv4G7mpCui
	S9TUACz1xrPdP0Bg8fhhSkI3iTXYjItCfiKfgF1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645115185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uKvzDj9iKTPfTL8ktMBpKXdQmcZpPn004FmAviZ7SyQ=;
	b=UOlJPbTPq+tmm4toHHwHRFqOGq6yXSk7KhYsqj6yUPDL+CN/pNmqLyVE1UB6zsEB
	2E//TSWzK1Ufz55HasObiJRJuQZ3c46MnJtLJ4rvi9VsAz4Hs4VW/Bs+UvsqpyGVCby
	lbUDdcJMTeNspRXtDZNkbc2BhUOEbkSVWENss7+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f088196a4-47cf9fe6-22d2-4fdd-8aaf-eb1a0edba25f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0eb840bdebeaab926fd3a70ec3e4f46f3f35740f99ae118d897dad86a043b395
Date: Thu, 17 Feb 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645115184
