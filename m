Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DCB7E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 11:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648379338;
	h=To:Subject:From:Message-Id:Date;
	bh=KINJ+9g/0XuEU32P/1mmkIBmBN0ljv/2mL6LD+oCyys=;
	b=UgopUhq/7lJSJh+yhWujjyIAlIbyqpHd74CmwabBsDikWVBvIvqKQffNgAMSGSsf
	knWt7ELA2AdiX+A7uEg34QKwSZ/hR7R9hpHEcaP1dCAHcYEv1gTd65I0VIGzD/SCvJ0
	PogPsw3jGtflTJyUG+Bkptli0pxkacnNTpDA+ahs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648379338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KINJ+9g/0XuEU32P/1mmkIBmBN0ljv/2mL6LD+oCyys=;
	b=LGl6gmaR93haQ1jTj3f0b+b8qbW4hJLvgCAE707XgM+k1xlXSHQ7Uz/KMb5RXdcD
	Z804Moik+SCS2yvZvK1uX/7R/KJ8WDPXlNHOwYaepW4hl2W20iKEVU9sRDngK56LBVL
	LspS0FjnJL7fU4VrnChiLWbc9keY1WSMkf7SVOtc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcb109e39-6ff2d7a6-1842-434c-a1a9-b64152c6b9df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc40bc65970da235d27e5a31e7cd9390304523f40835d51d843188d4a0af57b8
Date: Sun, 27 Mar 2022 11:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648379338
