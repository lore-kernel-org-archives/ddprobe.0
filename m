Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAC12C9E
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 11:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651576378;
	h=To:Subject:From:Message-Id:Date;
	bh=5TQgt9Tpr92S3EwMl7oCrP1+vLM3rl8eX5raHYDuZbg=;
	b=k/wToji2QJ88yhu0zjGD7mLXnH2tO2cgqTtx0YJQ5mtke/2pDeJZ8P1nL+/47EDE
	RvbLXOGlMlrDaBzLhN/07Zzh+WcLoyDGFedxivhUkz7ZGdu7YYQSCrc1n3Jy3nc5SoO
	/AGg5TWx4s6bF+6D0mLgyAlc043ofnsbHV/qE0m4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651576378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5TQgt9Tpr92S3EwMl7oCrP1+vLM3rl8eX5raHYDuZbg=;
	b=B0frfZawBJWSfzViEsXGS6M+Q0JyY1CWmonXdsS4p8hYMTPveq6cqgfmeZyDxKYT
	DQPjMcw8iPlwIShUWkhy3UiHEzkUs589FigChlciIxomv+yXOfuyYUkvxoxt971IJwL
	mn9+xvcq5DFgUa/idq45pXu5VY0hB2mV/Y9JyNCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180899f93a3-08c55d4f-51e2-4df9-812d-249a13f6a3db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d78e9d46454814b56d6ebd8cb9b9eb758c64176c622f4b9e0021108b7c5d83e7
Date: Tue, 3 May 2022 11:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651576378
