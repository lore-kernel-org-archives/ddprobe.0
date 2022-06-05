Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8F84688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 02:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654395119;
	h=To:Subject:From:Message-Id:Date;
	bh=ibC8eFR5mlgUNt9yJGvMUUwQLrrDwtkPyCYFFC3m/f0=;
	b=OY7WhJq1GURZNxh7ehyQ0LG9Tg++dwcEJ4F5fLC8qpvQKorqa3Y9okEFsm/7fmbh
	9mGDdUg9k6N/Cyjm4H9dbywEMTNLmxAew9AuNnhyjbXjUjDZtTPc6xJe0zBSsokB8QL
	vrDcLoYNdA0EcxBTQIHd5IXpervuFp1LRD6QbMqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654395119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ibC8eFR5mlgUNt9yJGvMUUwQLrrDwtkPyCYFFC3m/f0=;
	b=EGbNBhcYLh+XsjTYfDI3tsxQJGR1xGjmnJrYhyNN/spbcU5n6yqcCdmXOcs4kRDL
	8hy3m8xAT19Mo/B2R8JTiE4mQK78+o9xKF+WAtPVjaMC23/eHfa1RzOp1tCL74EHdrW
	gD0iNfJOfFwTDL2R4WPXp330AvAfZn7x2vYMjmvk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018131a22690-8ee7b24f-1f44-44e7-b0a2-495bc42bd651-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e855571062fb3f18554beb7dddbdee0269d33dfa0e1baba3d682e442945b9bf4
Date: Sun, 5 Jun 2022 02:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654395119
