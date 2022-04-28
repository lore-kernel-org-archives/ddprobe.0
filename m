Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4AB1843
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 23:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651189618;
	h=To:Subject:From:Message-Id:Date;
	bh=vu3TDbcWGv5gTZJfW+JPTdnV60QMMDtwtPsRt9+nvMk=;
	b=h+7ilTPcy4DtdefAQw7Npcafk7a6bJg3u+kMBX/Vg7yOA2L7yQulUc7i42cSoGHz
	zDiVw0iQtFxxf4dCIwHXiHZFsd9eBu7aDouaC7i1plIPrLOn8tfWLLUOlX64Dum1SMh
	Bep3Hghm+vJh/JsSP4iv6lDD9R1a9uM38/gnonkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651189618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vu3TDbcWGv5gTZJfW+JPTdnV60QMMDtwtPsRt9+nvMk=;
	b=PK/D2CVDWhG2FgVwNwgiMLPy/HS8VQIkgzGyD/RB1sskmNMXWBm0hSGeT4CJm9YX
	h/RO/JzsMFjK6ArM+w6M6SjSYakY87ViRCv/ryIAjJPxZP5TXBFfzF9VNMO0lQ4lKDp
	upvpRPXygxu3XSEN+wfUPXMysWiwfCYG6g4pqsj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018072921684-6da90d9a-de40-4f14-8ef6-26ff270392b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3aed2dea3ac43880e2bd42b7253542e21d913f38628d88e6b5cd8f6007fa79f3
Date: Thu, 28 Apr 2022 23:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651189618
