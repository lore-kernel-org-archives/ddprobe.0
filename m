Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC2723CC
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647364585;
	h=To:Subject:From:Message-Id:Date;
	bh=F5PWDS2niv7Jfw3DY7vDb0hbYCjRPQMCLDnJXxC/5WQ=;
	b=TOydtENbsIGGNESRIVn0tmLUTLY+jxx7l6qDOZOvr5LLsPtCD+aU+p7iMVva1GqX
	+uB32kVm/1vs22AuN1hIGdHzGWbmE9z1Cda9e5+GDT/hh5Kl239zDfibvHINaps5QQ3
	lDydsBletEUzldt1MgLhzqsGNIeEwOZUPfDpU2ZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647364585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F5PWDS2niv7Jfw3DY7vDb0hbYCjRPQMCLDnJXxC/5WQ=;
	b=Boen2cY8sPNunQEkXjbqQ1E5B2pi94RvQSE6dUoCIOTpd6KL0dAR2QFHVYbLpSpc
	CMTEIDVORKsuyFUgEcFHIfZvNvLhxWO1YTwWDKsgzbhyaRyzx3YJ2OB7Bf///WaXQQd
	SF7/qoaF5bz85muT2Q4vJM/dMH/XfM5GI//6LT3I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e94b56e-88b2b71c-38f2-461e-82a2-06a4ce63cbee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04c3ded10402fa2f1831d9d7eb1d2743ef97dfd454370e32bd2cce93bd5cae68
Date: Tue, 15 Mar 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647364584
