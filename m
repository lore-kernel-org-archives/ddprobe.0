Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E773810
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657280812;
	h=To:Subject:From:Message-Id:Date;
	bh=YT19AI7tbKXGXLm46uWKmwxXbXOMjswS6G/J62NDzB0=;
	b=d6KWXxqR9c8K/oVaO6DS27oMau206f8/9hEQHgaN1MS0Njxch40bBgvey3QayFM1
	nxoqZXBl5A0mpUGbeN0xVx/EQqj/XrlvDLwQ18Xj2WEeSEr8k4FZg5Pb2MaAV6el51A
	Zvbjy+Uu0TzpIsUQBU6/Lf/aC9r9vDe9qAWLdlsw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657280812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YT19AI7tbKXGXLm46uWKmwxXbXOMjswS6G/J62NDzB0=;
	b=TM6jJfB7CyxHNBOqyib8kFJqB2cxuVFEX8jbKzOb1IhvdTBygbpZ4au9DE4FCWnI
	he98g6d46hJ1QMYJMr9oU/KTyWoh8iIhFkRrR4oVfrKfc6aR5Elj7ETHarcxVXsbLAV
	hOWOX1Hp/5YnwssXCZVFcgHCbXgQc0hboJq4IZ7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dda25516-e9baee28-deba-4935-80ac-336f3dd4c395-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d798931c46d2b73fa401ed78b619511c04838b23f413fd68399bb2272f88ccae
Date: Fri, 8 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657280812
