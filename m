Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B4D28F3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658656612;
	h=To:Subject:From:Message-Id:Date;
	bh=btJgIfiEDnX/7y23zTaNAJtn9/kUD9iSpCKlLiq2Ayg=;
	b=hK68b3sdB49mZefEyAcYPfu0997+h+ZISxSaNdCxEr//L3dvBXRPKxhtP3KTeawH
	CnvvcxYUeNiShDxFehXSlStZ+d+o65TZaLpECG2z7BrknKs0dbkRCxHAmhffYVd29XS
	QyUxCjqIeisldMy3CcZZdqlR6ubFjGCh12MhJbM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658656612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=btJgIfiEDnX/7y23zTaNAJtn9/kUD9iSpCKlLiq2Ayg=;
	b=HArePLpni4mB/tDCZq8cB6NiG3IjbJBhGGnDeJfbUxx2zoRb0MMqGqjFl2PV9BkH
	t008dWawnuMP1KXdEeNqRrP9YVBeiu/iY7L5/MLCZ5ZSmAqsnTGZxPbcdbHpBFTd4ie
	McFE/9QZ2JNnV9lrtLKlD1whBD3NbLIFQlEQuxwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822fa35f9b-21f53f42-f636-414e-aef4-2f267c99b4fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f03b9147e88bdb70c2a2ea6cdbc8c39aedfd210c179bd1703041e9224195c160
Date: Sun, 24 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658656612
