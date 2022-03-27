Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECF13FC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 20:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648412938;
	h=To:Subject:From:Message-Id:Date;
	bh=Kev70LyitkOkZf3dSH5XACpLn7FfoahqDuE60cNWFfs=;
	b=Qg7yxptz7GYitbMiQGNpqyMxrLmdDhIiFbKmmY2LGXCKpCRnEMotGQRuTVs3saSz
	JkuFkXJ1MGmvuk8rcEY9cc5M7AHaQOa2vXoowY1azCXwPpKJ7bfRmJTySiI+J7EcxLe
	XPYP6+McapDJBAFBgNAuoZK7X5tf3/PPyZM1auTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648412938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kev70LyitkOkZf3dSH5XACpLn7FfoahqDuE60cNWFfs=;
	b=GeASNbC6li0ZPtU/U0L3LR9OTZ1hpNRI+gO0q0rQrb9XXOpkWz1/OagOEKhhy23f
	2ja0OHI535bLf+q9oZ0zMG+qFX4ynVYV/JyxwmT8nD4pM5I+T942IpX6xSiX64kzU8f
	nOTae4WL1KXNZYzysa1lg/hrwmRR1BdviZlj2gro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd11502c-0b9b723e-099b-4d15-bf06-cd0a5aba5175-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84c453f9b487825c84980eb99e52d81292a0486ab65ae84a8028755735730fd7
Date: Sun, 27 Mar 2022 20:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648412938
