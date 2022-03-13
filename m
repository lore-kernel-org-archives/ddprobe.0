Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0342F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647199284;
	h=To:Subject:From:Message-Id:Date;
	bh=7MUpbyVc7KgVPHHNkq3tVZBAbWb7FTdoo5unT2Ew0Q0=;
	b=JmJPgSfB9EXPvZ5q0FfSySPyp06gmhKhNQtEQqmf8Vd7kcRO/Jb5vzEGoMqrCdDJ
	McBd8wOnPdkDvlXNzM0A9ZKalxzXA1rwu1nWZp/hlJvQuC3ROmus92GXPNztxYPNZ9Y
	QucqgR1sPUhvrFt070O5BIdNL+zb2MfjoiwN2xJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647199284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7MUpbyVc7KgVPHHNkq3tVZBAbWb7FTdoo5unT2Ew0Q0=;
	b=TI0vD7k5fpOSPA7woJTJ8NE9JYK1/FMLesrIdi2JjvAILXq0TR1sJ4TRputsHGMj
	OyyWXZz/AzpKTLiUXbMK2mXrl0lzvLvlA2YIma70xt1ZQaYxFvhRsBIMLXELomK8I77
	7smEmfWyG2yH2qBF18EMxEUPjyeK6ziVFRixMNCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84ba6e00-e5e85be4-460c-4bbb-a41c-f38ad7fa8e62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e13d69f1f384073c2e7dbb2eac0e674244a230bd86aae4d06cf5b15706b0383
Date: Sun, 13 Mar 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647199284
