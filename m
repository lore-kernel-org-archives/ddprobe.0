Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216A27B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 15:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654701419;
	h=To:Subject:From:Message-Id:Date;
	bh=XYG/xzvJYqFQbpCeMiVwMSrTTBrgF/HWev0lcfS3BN8=;
	b=N6EUDUtvdtteIhqmXPNylvWLYWJ4InjS3Q/DMyuhhSU/4eyPktheTnqVnG2tfFU+
	dcamFX6sYfrgVNt+agNVC3D5TZ9QWd+adwjPnp7tp4neLhcOuq10KX8XktJ9cB0L/Nw
	JLQ7vBc4A9GGrhF2BHWvp7zjrgp+ehvPwsLYxPIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654701419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XYG/xzvJYqFQbpCeMiVwMSrTTBrgF/HWev0lcfS3BN8=;
	b=i/OxmObxJ2HWkd+NBkFGSFvJYwTuTdV+kmBUuNVAzIb9DC5lTUcvfHrXwg6MdEyt
	NCyc+9gSfi5NQz9ZDf20vDSoTvJLR1IEoUPfcPMuJwF6bUA0N5j6O/zKpw62rYzTceS
	q2aJHaToawF5P72RW3k2ZlcAO1ItHbkhYqDdF+gA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018143e3eaf4-e52428c3-d6aa-4135-b388-d75b99ed72c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4adbcc27004cfa1ab143eb101316d20797ee2a588da31696811b969be27c9bc
Date: Wed, 8 Jun 2022 15:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654701419
