Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1F73D7B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 23:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654124699;
	h=To:Subject:From:Message-Id:Date;
	bh=XZ1O8CNRFhR7vw+dfcPAUByQZoEWq4lR38U9FZFEP9Y=;
	b=C1eDYEXcF5/eD+I7Ap99Wur7uQuNe06/Ggv3a/YEJSKduZxzJXkxocxguyLJQt8p
	Z1fN3L5rIwPHR5Fr9vODooAuMTAvRTGRT/aEGpncY3T5ruIRhqsP9rXW7SW7Plp/ZUi
	kQK63WnEVglIc3GBwPiUb/t0p/4V3MRGlNr3Wjqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654124699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XZ1O8CNRFhR7vw+dfcPAUByQZoEWq4lR38U9FZFEP9Y=;
	b=MPcpmH3i2/EVYZ+P78o4LtK5fl9oD/bwmLS0E5OklYDHF4ZMRb6ybTZuCh1gN6AJ
	XPP7PJfGdOZv9NYdWyIxxpw2CY8lpKsu3fmp9gUABmBcTajYjo8PAwiQAgRRyXPaWZH
	rInBdrz+O/2cc/LOQE5ZLdW/BBSR6W9uHXhTrgQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812183ded1-613bbd09-6df6-4d50-a901-5c6f5d123174-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db7e7fabbae9b42af2e75d7a01c27a10f48b07fde1e58fceb0eda22d7b884d4a
Date: Wed, 1 Jun 2022 23:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654124699
