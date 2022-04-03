Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F151046BC
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 13:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648993198;
	h=To:Subject:From:Message-Id:Date;
	bh=U6VzMlJ/W3rhn5HvvPX2wGQCu6RH8M/K+ueqhUOfCJk=;
	b=QSg1uR+V9FShm8zmcR/swCLNajFXrjnT/K7bFzPb4KYxOXdoWjVvjUi0J5Wz4m4A
	Frku5ie0xOfcKY08A9H/CzpNMmhdWAiM6yrPikptiRWpXBIN/DnMt0fQRxAbFtrCJj5
	MyR7ycEEoF3G4MzbExMd1Y+vAbeMfnc4b1nEOhP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648993198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U6VzMlJ/W3rhn5HvvPX2wGQCu6RH8M/K+ueqhUOfCJk=;
	b=O3ZOYAHeQ+H3ZENn8+Jwb4TEnAgwZ+8+XbJv5riVl3ad9GPpoGf6Akkrv5NKDSiW
	IicjnycA3pmNUe2zoaUKwJa1ZhuJw97RPf+tePbbk5hTLqusymIq5PHUq/V1tH5Ozvd
	rpzoKFTdv0bjXXHxmsQz07w4xpP1zUU/68dBLhvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fefa760e1-160c2c5b-4339-46c6-882e-54f1c997ea73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1524237a892b990d055b716a353efe48e7e966b3311250a5f06ed8d649e3cf98
Date: Sun, 3 Apr 2022 13:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648993198
