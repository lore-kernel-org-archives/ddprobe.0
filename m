Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 915827B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647825085;
	h=To:Subject:From:Message-Id:Date;
	bh=Wv3cgavtPEHpumVYw5bfUPYhbUpqnsS8mNp2IuPW/eY=;
	b=FFRqcIkkhAdeMhFSVfCrrUsLZpAjcrTgaPoFX32STKS9AUi4+AbiL3s7Eats5H0w
	fM3EvbKimelg1zM/mwBGdNOHAgsZIBzu5WHktwaWgfsmxhi5RwWuJGiNMYpwhfno3mw
	LtglhtSBmEhf9gw1L9cfOvkl0PKjE0l7SyMW9UD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647825085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wv3cgavtPEHpumVYw5bfUPYhbUpqnsS8mNp2IuPW/eY=;
	b=j1rNTbyJLsdCyjXMJVAUoA3cwarRzGJcNNetsiDjXwiQztRJ/M1b67A8odwvrBDh
	sgSGtr754yna1VLfNzpRpOIaRtqTvbufVpqiDZmUzW0oBZGdTuPCDrqKT+9FIrPFS26
	rgL7eGkooJhJYm+dK6FitbfkcAxnjVnRrGpYHKsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa0761b7-2d5227ef-6e61-46f3-ae0e-f757664a7bb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d73a2f049548ddf87205f75ede5ecbe95acef7c22cdf2fe4bb313d2acc9db66
Date: Mon, 21 Mar 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647825084
