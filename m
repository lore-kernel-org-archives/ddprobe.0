Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 968416AB3
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647287185;
	h=To:Subject:From:Message-Id:Date;
	bh=b1AaWDscCyXzYBSxMeWnhVY9GhXbJEY7SeAUKnJc4aE=;
	b=NgDNvxOs50KGLz7C1Kg6hy7ph7VDeVnGSaoRqtTiGGvupywlj5RMkDDZKniNSMEp
	fkgN3xYewfdICW4StKu6WNS6CstqbnGz43YuldUl5JU5uXlMIruduK6RkGLoiv8g1DQ
	h0utMMCpLpYba6dTpJNOc+//FyubPks2TOvGnmp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647287185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b1AaWDscCyXzYBSxMeWnhVY9GhXbJEY7SeAUKnJc4aE=;
	b=Jipzro2InyPifwZ5HRntHR175nfZOBBx2XNrtcik/IWzoQVuWovnBJe4EUsyX22U
	RlzSD5ffmAjHpU5+2I6Kkq10RpCryAVOObeOEh8YB/DHtyzkNW7f8l6j4Vg2duEHiNV
	W0UfiZhaAYbGFgoGJ8k//vMshLnMRAlZhwlpyhVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89f7ada3-4007f63c-d82f-4580-8ad1-ff5ce9425c09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc7be47829dcd6c20b47720cd909cbe47fe0b5febb5e1fd9a2e4e17aa951a0b8
Date: Mon, 14 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647287184
