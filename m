Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BA828F5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 14:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649945038;
	h=To:Subject:From:Message-Id:Date;
	bh=AhLAQNho2HA/boC7DgLeCSWzgReamp3P2mbudpPjZeI=;
	b=cQKJvZpHMZNQdlMlNewtdtKVTz1XgcgirCmyUFUiLeJxshBzBXXdEg6oMD4XlCyr
	/VdnmccQdTZ2vmOwK+2Rm5RhLLUAbpRo6D0l27Hmn8GtHi5Z1nRDKFHpZWxRBL1j0Mc
	SZFTgZM3lSBMpP/Tn29+ri4YIFS6Lg7b4rydS2Hw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649945038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AhLAQNho2HA/boC7DgLeCSWzgReamp3P2mbudpPjZeI=;
	b=V0WlNgNWEZ4EXIUpNBHMa0JEMk+t+YJN3pTH6/AWgXarg39fwyS4HQhkUNT2QqRF
	TylCT80JRPfwKbCTEi4WoFkev0YqcX5KqefWYPyAkrRFKMJ7iBCfrIwulUa44soQIPv
	H79c5m+sTx+CTy9A9Poo38M3V77Xi7jfOHb0Eqy8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018028634dde-1d107805-fef3-45c3-9831-05120650ac77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33deecfed034e95f72ed1f1f70641cf475ad54722afdaf7d6dae1c6061e713ff
Date: Thu, 14 Apr 2022 14:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649945038
