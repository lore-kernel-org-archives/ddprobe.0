Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D33F36D
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 02:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652493719;
	h=To:Subject:From:Message-Id:Date;
	bh=1sCHtUFVbBnUxC4g0YnAW9/a4w3hAHsC6tL/Qo7E54o=;
	b=fk4Q5GGiKMHoCd221DOJhFQyPw6Jj0/BzoeprzgtxZO/kzn2l/TMVjzI1KoaQc0g
	+2ESWfoZJYiF/M6ZADuqmU5VFvV5i6/ujJbf5hnjRB+Q4e/BCztykl5X6MSoFUKKtDM
	MMi3CYM/k9Pr+OKiMlXTY54yj8Mo4LZ2WPWYJXzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652493719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1sCHtUFVbBnUxC4g0YnAW9/a4w3hAHsC6tL/Qo7E54o=;
	b=cHE5qesFbDLG2ZF6DSW1YDLKtUmxoS8/JYeEhzK3amOc1NRs+BUjQ8MBepUd9BYB
	koOeBA7Y+grE5wg0vKWmfP58/19Im81hfVWArx5476tAHcceSSiEdz94Jg+rsy2xCZT
	MMzmN7a7PfDMNj/8RbHsCtbgdgpyuDKFp3aHwg3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c04d16c2-8f6cf503-76bc-4c98-8d86-17df9de310ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 188f1b8cc91a03d2384a0db7fe14ef9347a579f75ee1cd474cf1c0acb6fd4bf6
Date: Sat, 14 May 2022 02:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652493719
