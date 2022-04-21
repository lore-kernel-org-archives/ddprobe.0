Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12127A
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 06:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650521158;
	h=To:Subject:From:Message-Id:Date;
	bh=oXKa/UN7x8SUKIx4nKCAmw0ifkDMigbY7f1GrMe0MW0=;
	b=Q1FBcLZA2oAiW435nlggTCANrDFKUEmFNLNLq7MQvKPTE13a32XNfO8RdgCUMdTP
	all6bBCHA17KuMRjaE1YSppO91uPUc1wbaFBzzvSZXuGhRWSVdohCbMs8DQ2yQneY59
	h1YcWOH1vAaVLULrvwblfY7BQb4/RFWR2GrbuCTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650521158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oXKa/UN7x8SUKIx4nKCAmw0ifkDMigbY7f1GrMe0MW0=;
	b=LZedU0YPyREdXk8OmQDkIPbVyvwXtq/QO3ZxbSmgO5PGMepZnfqeCzSaeCla7asY
	a3tGgXtgkUudDjKdbQsNHlueEpabNGl30zBS/r98KFCYuh13Nm63j25bQ2qF5k0yHyO
	/LfI6V1v1ibtPOiJZ68WFGFbk5TF8yjb/+Kw/xVk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804aba3269-08471f7c-f769-48c8-ad0d-6e4e322d4cdd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4164dc4184fd2738187c0e1bbfa3d009d49dcf4e69021014861fcae95f6aec43
Date: Thu, 21 Apr 2022 06:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650521158
