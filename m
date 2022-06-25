Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1687C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656190612;
	h=To:Subject:From:Message-Id:Date;
	bh=7aw3IFrm+++X2OgMk155ay5SxlQ6TwEEjvvia6BA8WQ=;
	b=ZHHrVDzGCy0may66zC/XNPFV0PecxITj8njKdfS1E94wqb1aj1k/Uwuc4HTQ+iPM
	cn2U6uW6fSNABi/iQVCjZLchtMvIG34dqJO80o46lCQsUHjEPqTNyZwFT49OaFNw0oj
	dG29fRTAMc1UN+/I6yOwl+fuo6e+W0XNTEyMjqLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656190612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7aw3IFrm+++X2OgMk155ay5SxlQ6TwEEjvvia6BA8WQ=;
	b=QvszpVgBrZLNQHDK5Qu60zn7m+AjDpTsLp8zNCGCD3JuUsHqzxU+E4NTQpxTpctg
	D1HAar1s3aIeImAZP3xv8/bi5pE1aXDeMKtePXWUkotfdNlL5RQP03tQ+4B95VO4UZL
	f7J6YpQDig8Qw4UZvJmnuGl/QNOg59xgXg9nNsCk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ca73321-40fa34d0-8bf7-458c-bb54-7c783643352e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76142202a8d4ba8d1b1b34602a572dd5df06b57ccd405a6015a7bfd16e97acd2
Date: Sat, 25 Jun 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656190612
