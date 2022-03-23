Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C547A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647999385;
	h=To:Subject:From:Message-Id:Date;
	bh=U/1GJI4OViTGFRdfCtqQdix5lxezROu5SnyKnySE/Rk=;
	b=B6l2qIxlN1vyvdr9h/72gsLk3875xyJ6CXGYcPBFyMMrhvdtMgGrzN+r4JK4eiHN
	GHZpn3kM+xDmxgyATAcsvkjZvC7FV/QMIMXmfxWIYCcsUdXRSf8o84ElxOzO4G5vZqg
	axTvUkbFImGO8zDjmppUX2AMka/G7cXBFszZgXQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647999385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U/1GJI4OViTGFRdfCtqQdix5lxezROu5SnyKnySE/Rk=;
	b=JKcU/Om+GmgB2fr3+JxiQnmaRkBhIBzemKzoh/TaeNrBtzEcTjoyXf/aROgUa5dT
	W7+5TJQjZgH1JvlU4i5k6Z875VlMwMYUbUIAsL0s/vwkkeaz0JbbRiTpP9ncgv1Za8q
	LsHybjziuDd0pm9LaBWRBFwUn6P6lIVoaDgWxrno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb46afcf7-d78564f0-9ea2-4ed5-8ccf-8fb39e1296c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e07a96ae2ba32f8e3794c62b10b64efbedeeaa71f81b61af1ee92e59bca8ed7
Date: Wed, 23 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647999384
