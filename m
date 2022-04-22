Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17C723B2
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 10:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650623998;
	h=To:Subject:From:Message-Id:Date;
	bh=OCPt1547fZ76iUjGVmY7otZMFwcawC2NTqcEdZGQKMM=;
	b=gyonGl6MostSWzTGNi4LGQRMpyIyq7/YPHtoznNr2yosowFXRjvqulHCV89jjKOX
	wkj66jM2kgEngma773thQHOS7o9ZW3d49KGnM/SRayGRg9fb/rLnyQzdj9CFLlf0nvj
	QXSfQvp22E+/YwQDylQr5bmMeQsuE/DKdnEAvR4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650623998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OCPt1547fZ76iUjGVmY7otZMFwcawC2NTqcEdZGQKMM=;
	b=VO/VbACRq/B4urLJ5TpwHffrFVA6U4cLjKgwjDr3PhRQ5umQVPmeRNf3v0G2V/bD
	Y6nDTa0B7kWfVEYIVv9kkD91OqR3DumQlT4v81UHUulAupsC6iMHCL1IoiM6A9gZh3U
	Sk/Y7RtvUmX7sLMfZIb+AA476zG9a7rGyv1wZdzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018050db694d-d53c8a45-69ae-4228-9124-b4036d470d7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecd4e2db6b3e81abcda876f2b249df7d4c6bcd03b0872664640e77a3134e8ab6
Date: Fri, 22 Apr 2022 10:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650623998
