Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BB1136F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 22:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651961458;
	h=To:Subject:From:Message-Id:Date;
	bh=WH4ayA0FnNp7PLskeymcsPTs/eZ0qc3AHj0xG8NCX7U=;
	b=RsC/mG9yeHn/nv0KZbYDEHDUIx/4bK3xFc1WxjFPABp2a2XsyToL4cDnahLy61V3
	is/btmZMMJKdddl+wNtvyOoM720R7D7pGyVRZyDiI4+TdXMME9lxMu19DwP9T0Syqpg
	n1Bi2uiwPue36LBoU8HryQHtVsUg/b/EJpIScZd4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651961458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WH4ayA0FnNp7PLskeymcsPTs/eZ0qc3AHj0xG8NCX7U=;
	b=MQwcs/DcE2BJfq/ynuqdz0hG1Mnn+daqZIlaACUckl758lcMRMKkSP2sEBwmn5rM
	QXwBCc43ravE0UkjvUO67dc9RmFJmDVd3Uq6vnNouoLeBxGUnu4iZI2vnTjeWh4mKVW
	JtvrsDUGuqtwgeiM7alvOB4zehB8MlmB/CECG/Cs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0936e54-f748e7fc-820b-4a2c-bde4-d72313b34cbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff53410c8a8353279c4eb7642f0bd036e58d8ad4fce2a2ffd1b3bdf206735b1f
Date: Sat, 7 May 2022 22:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651961458
