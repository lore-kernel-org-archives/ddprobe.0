Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BECF3201
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 19:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650740638;
	h=To:Subject:From:Message-Id:Date;
	bh=KgGmtR2v/b2pkulz5hHGFKlGcfriqVWpJN0QCnJ0JLY=;
	b=R1wJNpUcQGDfpllG3SMtUzawp4A6jxt37I/JUWsbngYFFDITBudO+Q3zVty7m4F1
	SGkPgTOIC+mgkYFiawKEDiEETUq9RW8XZziFnnMieZn8dqmShCAMl3tyMWSA53GD3h/
	vZAHH1+TTheFBW+SN2Y5FJ+zXZ1WyJBPkKWB69uU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650740638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KgGmtR2v/b2pkulz5hHGFKlGcfriqVWpJN0QCnJ0JLY=;
	b=P0XA4Z0k/ApZF9Pjwk4VIFlKjNIMZG1jPpyvaS/ziIl50B3yDytj88ezkhx/b/I1
	y7dyw6z7s/3s9Jpfp2kWpdX3FFlSEi1UzpmKd5CGE+wRGx2+K7SAkb910gstMEhFkFd
	qwWYdeJhxh5uIrXqngP4pkX1l2dT2kJMwwzWeXSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018057cf324c-6cbb676d-50e0-4841-a26d-92f932f9c745-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f6b039016116b89d7bb3dfe2a214b4178d1b7192ce5ec6ca8a9d53306efde89
Date: Sat, 23 Apr 2022 19:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650740638
