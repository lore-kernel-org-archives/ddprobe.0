Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208A41874
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 21:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652821979;
	h=To:Subject:From:Message-Id:Date;
	bh=U9gah5tOe7DtF683ocyLqtL0fX2AFnl1A+V5+ga1i+c=;
	b=GOsV+LGvyoiERkEQBkGCF0ERvJrGxNXbsnoixbA5ltkw+QWGyD1dU3R/gPERI3J2
	SV+XUgEp2tYeGUYNX+9uxu60+qix7ZX+yZRcjw/UK27YjASnsC5Z/IkPeZeJS0WeKvz
	3kroh4BwHvst1PSLaTe9Cxgenhmmo6HcFvLpqCvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652821979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U9gah5tOe7DtF683ocyLqtL0fX2AFnl1A+V5+ga1i+c=;
	b=R0mZf9tRyGHSd+yTQ0W8HycIqny8MheJXyAsAbAMpTFH/n7knB/rBQ0bby01aR7E
	QVYB0e+z+X5wiHJh+zV3Syh7JOFO8p1ZLeXzdui4ZMRD4zk1b7uLL7/gpifJHi4lMag
	g1FpVWP5NXnwz6IQCot9vvVnvBn3f1+GtuOz15sE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d3ddf0cc-82abf50d-45ac-411b-875a-a6c3db5ad05c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4644ce93f86b6cb4bb9b0982db0eac3594acc7b5e555ea5f75108d47dc0a3ad5
Date: Tue, 17 May 2022 21:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652821979
