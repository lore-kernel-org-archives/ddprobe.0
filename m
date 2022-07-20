Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C19523C3
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658300212;
	h=To:Subject:From:Message-Id:Date;
	bh=alRzaiab0P9H6rhm9yPdIo+dYQL2x4vzIzV39goYZDU=;
	b=bqqA8dUMrh1csUUYtF7ucPsWRf4UpqIQswQBYcbp+1ov82YpKd76atpbBiBDU+tE
	EC8bVoEMb2qqEAxZKTFJl99RmPzZEb+/v1mw9u1MsP/URy/az70v6cAnY5bmr0QX6/n
	UrixeqG3MFTQAyCtDO+GDI94TdJgatTCEKyaUg3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658300212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=alRzaiab0P9H6rhm9yPdIo+dYQL2x4vzIzV39goYZDU=;
	b=NqMbZHVAP6/bJluqkSpyEccvnB9eT9Kp0xJ+5Wm1nJ5+fwuqSr9wxsIT8IvOoXyv
	mfWZcP5FoeIKhZX3txGecnQ7tTMFM7cdsdzwUULIUlQ5mJM8niFfslIdlv3icJJS6NY
	HgUGz+3m5ToLvgcqMZup8/wR/kFzmtSqy+AVmM7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821a65243c-175d631e-9b35-4571-8ea6-c5ac60aedd8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98b769b56b6467a7c560fd0cb5206e4645baaf0cf62024852d3a08b93d71bf24
Date: Wed, 20 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658300212
