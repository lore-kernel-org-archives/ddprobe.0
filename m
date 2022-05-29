Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EFC17B
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 14:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653833159;
	h=To:Subject:From:Message-Id:Date;
	bh=desn+GICPUwq0kYEgRU/FOzTgMbojRS+TKKGKYtUoAw=;
	b=CrRZtxPc0vuJ5Evqj8IbRA8zhl1AoyXJD1+5rOyJuYfQYqZ7mCemY2QsqU4cOatW
	DXuQNYUvfcaLRr/G+Or571nliwTIgu0AAkMUqiGTV3Lbe/aS6sBiaz9iKj/41SHJGYF
	KI7G1D5eMheBX4rwq1Hgb/Nsv2a9HLAdguDES8XM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653833159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=desn+GICPUwq0kYEgRU/FOzTgMbojRS+TKKGKYtUoAw=;
	b=aVtdccRWvaxzgJDlNxB2VZf4DIaR/LS/cvuZGePZfBbUyDQ6iPUApJKTmkZA+ZFV
	T8gjMUEeihytArMbh6i24mvYUI0YRpd1NKkgXJt7VfRvecV2XwgJGYIi5IZrdIdG5+e
	TjbM7XJCnwIdzHaZiLflzIztMH2bboRa+YaDjW5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018110235243-6cbcc661-9c18-41f0-95b7-64e04344416b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bfd6f492fb59a045a80ab8e239f71149d026fd9786e49bbc02a44fadb973ab9
Date: Sun, 29 May 2022 14:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653833159
