Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F6A7E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646542884;
	h=To:Subject:From:Message-Id:Date;
	bh=MLsYC/h7imxT+P80Z5Qy9VfHhRJKmc1hujr/zLV8u1c=;
	b=N3dFIARkpxGMTK0CPQiVQ4cKngFkndX7NL1j2s1CsObQ29XZQKsgSTlETS8dr+Ti
	Eds4/gvKgh1ZKqbWcR4WmNVWA7MqqTgMQA0UVQCQaB1jVSUwp9WVbNO4jLVQRnrfnTr
	eI4iFWRShoxbB+52917woIJHSO372Qwwo9Xi3jNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646542884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MLsYC/h7imxT+P80Z5Qy9VfHhRJKmc1hujr/zLV8u1c=;
	b=dMPO6L/ZI7zguP5JwzkqIifTJBmK9PAX9zHT3fGKTPF928NqznzcGCp1T0yk3Upz
	ZF73fyd5kGyM5BwloJMRcl+vuY1XaCZPrqPmZeZa74C8PwPeo5C8EgXkyJ5c0XuLq/6
	2/LpLrZZyL8lSuPVLR7gYhnShvIn7hiwGlfEPNeU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d9a8fe4-1d70c3bd-e642-41c8-b04d-3bb4e24224b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: deb19203e4424062a154de952f371b23636eae694d8612f8f7c1f3c1588b0fe2
Date: Sun, 6 Mar 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646542884
