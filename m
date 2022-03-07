Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C62E4292
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646613984;
	h=To:Subject:From:Message-Id:Date;
	bh=+giQyf3c3Kt8oX/t5sgxVPGGv2O5oSrM+yFNS4IaCeo=;
	b=XxZ/qRvt1+e9SZaBMeHy8nNhkbQ+VunGSqeVQY9nE32CUKlLPNsuc+ExuL6Jiyh+
	TF6mg6PoVs/g46p6Kj4g2OSYBE0DpRwWAGH2nRB2sHZ1w44e9A/an486JQoyqpCw/KO
	2Bc3tV4CByF9BAzmy6Tj2slnFq6LspuyuniwhTmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646613984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+giQyf3c3Kt8oX/t5sgxVPGGv2O5oSrM+yFNS4IaCeo=;
	b=F0yQq92z8Roi8aQ/lH6e5F57AVpLT7iTNr3OUFOZU5iQpmFllL4uRgmicNokvHDH
	WzaUw8wYMp9uJlGA4JuUTjoo4fHUDBg/MdIcQIOdT0hoyMjhK7a/MfNTcQBzHsqjtjP
	k8BeVvJaSy5sZzBjnCzWxq1MPqAQq1dKse5bSIME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f61d77625-440dfbec-262e-4828-ad26-4568804a24c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2964c1574e352227f4f8f03bcc8544a719c97f1d3dbd5cdeb379972aba163453
Date: Mon, 7 Mar 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646613984
