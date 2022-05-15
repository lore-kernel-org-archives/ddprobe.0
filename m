Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E727A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 05:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652591579;
	h=To:Subject:From:Message-Id:Date;
	bh=/3lPmF0U0adsQJHRxGBFPSOSBXvO0ihE3F58ZXmCM3M=;
	b=Xpcpm4Ni/M7ZUuf3XT2ZCBfmVObMZBeA2u7ZF3MND8oT6X1eCLSU41HRpokp+ejR
	TI4lK94ODHna3bOcUlPO+CW0n0rr9Ow419q25K219MqIfz+kMnta1OsrsPXsM357DU5
	QHb6uveF0PsJwaioprD4UAHkzBhMiOLjetFIYhwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652591579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/3lPmF0U0adsQJHRxGBFPSOSBXvO0ihE3F58ZXmCM3M=;
	b=VfZLdWQiUeiWIlZxc+FPeOgzhrfpP4Ux2MD+mnAj81csqAq3bb6JJK6IJb5sD8sm
	wzXPypfgjFqxLVRVwrgzM3YDap9fFEHi+ihfxUjSN5WBEPqZZRB9vrJd1qaAkbYYTmT
	BRaJbmBmmqAvBQN28ka3saNF+4tIWygQZHKyMw1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c6225090-81e0a85a-efc9-411f-971b-bccaeca4def1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6d0c0fedd47db6d2558b6469fcec5f668966e73f2b9180eb3ce724897a89a3b
Date: Sun, 15 May 2022 05:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652591579
