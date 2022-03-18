Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988A55137
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647638184;
	h=To:Subject:From:Message-Id:Date;
	bh=fqntLOcBXDqCqMEab3mnQldX3FskcWvP7Hm5GvbNnXM=;
	b=Z+GLtD+URVx0lvvJd+QMVBWuNjtGP0Vkp1kYiBbdZnrK/khWkOyDuVPAPzyFYewN
	ASRTDFZJWAMZxwQXhZqdGHYytrhoHzx9yWjA5WgaU0B9wrPLJE6HgjlY5VgteI+O2sn
	lsBiT4p/TKmdHQGkqIl/BinhEEn0tZM62Wcj9I4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647638184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fqntLOcBXDqCqMEab3mnQldX3FskcWvP7Hm5GvbNnXM=;
	b=ELDJElWtp91+JaRIzU6MSKo2iOUwqlL9KfUQmZNf0x4xzVDRVDVOJguySFTXvD77
	3BDLT6IvwPsdVVmpaUnzL0lg4A6OeEPzYAoQhDurdz5ciq6j9x3mmbspUc5vbut4bkg
	MmvdIANsAUntODBOafL0DfR9WpJUS4GiV+TY3V4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ee38327-d243b481-cd41-4557-a34f-ae14c41c50b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 384f32c1217de6d62d817057afc22103102af93fc380eac1592f4ceec7a0d822
Date: Fri, 18 Mar 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647638184
