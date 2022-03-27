Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1729B17C0
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 09:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648371958;
	h=To:Subject:From:Message-Id:Date;
	bh=JgvxN+pE2XlHjRhdnaZosKgepifmKRQw9PAOvcRuoAQ=;
	b=CBxhZ7zB2HLLCFMBCh4CiLDleizH4vWeBObdYxqnmFe/UZ9TQpVAIONz+Maeb0EN
	isMViK8aoHyDWqQykQlc4xRPodC+MXmEBDiMMxG6FsUISPY9WL5Rpxuy5uSPPc25Bce
	kaxuEtuTWvsjZHjAv73Al0SkM7rB4wMkaGTzsWYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648371958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JgvxN+pE2XlHjRhdnaZosKgepifmKRQw9PAOvcRuoAQ=;
	b=BEvFhO3hr5n3pz3qivzBCSe51UTnlx17vtNcSPHReUuZLWTAmAnQHuLBRgeh3goM
	a6Gpe6PqvaBKd/ImHXE9tGBVKMHqvXVt+wbclUFzJbNg4wUMpWqKB/M63R/HkBo0FDc
	9TNT6scyV/dCGymCFD9DQ4C37gv9V761vibqAFxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcaa001fa-2ff6c9a0-0708-4efc-9e02-aaf088ae5ab4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21bfabf0bc3bcd41ecc1fecabb7dfb144edac4d9d4eeae2beb643683a02961e1
Date: Sun, 27 Mar 2022 09:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648371958
