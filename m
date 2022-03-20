Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670A73FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647798384;
	h=To:Subject:From:Message-Id:Date;
	bh=B0JXg+RNYL0RgQpsa9K2GoQ5MQdp2msJZbpiLp4q9ic=;
	b=RAVEIyzMB+NZzzy05uuSa5utg8niPw4kXCB/x/TrYvItw7mJvCN50m75SgMuyPJe
	tudFtOXyiFgsOi3dyVERl99gtTcPPFo+lFzKGJIV8ZaFnI9d3apCYyVjG4x++QDy7BI
	hWpt3VV5jMCFhhyDq5PlbKlNNUSK88LrcJvvMO/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647798384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B0JXg+RNYL0RgQpsa9K2GoQ5MQdp2msJZbpiLp4q9ic=;
	b=LkNrmbQOVQYFJDftbz0IDGkhedfIKBKGkchuBi8ntuzYESFhtjLC8p+T+u0YeXj0
	GAZDhCsx9Uc1oBSZmEtfY0idKBzqqcGMlgZHFDtCXGuv3LGf62t0vlPBb7DtmFQXymZ
	fkHZPS4Amjo0pMandefY4m4paLUSffjsQmJrejEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa86ff85f-febb2211-ce03-488b-9935-ca7a90a0468e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 477c80606390cedae79ab60b8fd3ee9267e010eb8539a64595a5cab3fc7da4ea
Date: Sun, 20 Mar 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647798384
