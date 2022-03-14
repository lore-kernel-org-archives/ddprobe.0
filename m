Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7746AD9
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647292285;
	h=To:Subject:From:Message-Id:Date;
	bh=d75ngesm79GmK9lV0k08AtFQdOWg/wKsMhszWIDXLjs=;
	b=R2OZCLF17Jr2pcrA+aZX4P8HbSkGs5w+C7DlMkROTkO4o0EHPPORdCRyLkFy5ajh
	XKSFCwqZL65zrRXJR2zmoljzwJRhciVCXUGWqARWNjMqFF2qbpqgdnPoy3brScFrOd8
	HmWjT/5zYIjjX1/5zKLNQNtqEcO+q8g6JiQy8Ffo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647292285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d75ngesm79GmK9lV0k08AtFQdOWg/wKsMhszWIDXLjs=;
	b=VXHcQt9N5iRe0NouhqPX/IWiC3pO4AaQTj0KKhmwo8pO6OrTqH7uhpW+PktrnJEE
	O3fF+hHSvCd+QxGha1OLn8q58Gnv3+zc5xzyp3APYe+oJu8dAmrxQU3NBSsu1sb9WaD
	NG8bJsZLovQqFeKM7NBQwZFNRIjvzwwFpXsKLEmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a457f42-3636a5f7-648e-4c28-b207-f5fa1726da49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ebbd631b7eb2091a5ecd0a20a223ad9b71b33389f2e165f461ce8ebf9084564
Date: Mon, 14 Mar 2022 21:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647292284
