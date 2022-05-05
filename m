Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C37F7F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 06:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651732138;
	h=To:Subject:From:Message-Id:Date;
	bh=pT8lrqzvXA9jtjMiFd8hGCbqqlEwMpXQJ8qLmky24E8=;
	b=kaa9uFpvT/CP55f/D2d3CDYCvYdMylpBghujEe4PRXBkN1mu+JqUc/0BFjoDlclI
	fyeaYeqtc4E7V1s2YAoV2rpV+HrVvLTpR6Ej9xDt7gjc9Fn2ruA1CSaJKGaj6msKUGX
	GLHwWozjwa0wy4ft9cfwczCAhJS2RUIKfBlLaZ3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651732138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pT8lrqzvXA9jtjMiFd8hGCbqqlEwMpXQJ8qLmky24E8=;
	b=JAn5C8NNLsqPx2zSaP9qmM5l+IJvDGhkteAItYhHaaX+yGJ/YYWODnYSZ0owlAY+
	anq9g8toNftSuXnkd5yQ5LfZ2b1EQa0FtpGjGU+nNb0GVU7wNzaDFYgVsrwoXRkxNqU
	/Vw82RoNPc34MyyQHbNUK5sXVM++Alxk8l/Kubcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018092e8494a-2b2ef6e5-636f-48e6-b64d-cfbbcaa0a93c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae5406f835e8adb66f48146c21b491e9d4c054802b7a4de4209febc30c25c626
Date: Thu, 5 May 2022 06:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651732138
