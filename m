Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3DC1385
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 20:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650398458;
	h=To:Subject:From:Message-Id:Date;
	bh=ZnGRQEHP3caD1B+EQgf6yUjJmJY6aGF/0yNP+CuZeww=;
	b=kPhd1Cqgu7/9Zk/r1rOXqFXvIL2Pb8QGbQkMo6LiEpDDjaSpgm08ZA7yTTzLKEMW
	2l6UQ/rRK/VkNxh2K+f3gzdby0kQ8d2UOoacknCaYBNnFjIz7049avVuw/QUR8zicyQ
	DVPkzvqSe8iE6OLd+YKiXcwh1aIZ1zKDsnCreOD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650398458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZnGRQEHP3caD1B+EQgf6yUjJmJY6aGF/0yNP+CuZeww=;
	b=gW+DHnn3oh+IqJNl/lTKe1M6ShO2rQDlUQmz3ueuwI1hHDyrOt+QLJJD6+P8xKSt
	6NE9lDiVDAgxq5OsFp6Zk+Yqgd2jw43I84Mx6nqMhfunkdQLQFXIdD70KzQpmk37PVk
	EwixdQZAhWEn2bHukVhuuKO+nEm7419bseUAnU4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804369f17e-ac0dd6a1-8f46-4045-b893-12dfc6903392-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1309534372f2e9ca25592a0f3067ce62961ca8ca4f62d084c77cc21099e9ee2
Date: Tue, 19 Apr 2022 20:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650398458
