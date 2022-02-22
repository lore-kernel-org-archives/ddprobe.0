Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672D97E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645511485;
	h=To:Subject:From:Message-Id:Date;
	bh=72eN6eygFVi60qT0qTj4vuKJfwy4cJ9Hq0RDhdSTUL4=;
	b=itdpFNf/bxVsArbDN1YsgfL68MNyZ1qQpqF0JT08fxbKgZd+3eJXzoCYWU3UYeOr
	l0HuXAk8hhpSAhbz8tFo7ykGxZq4TPBpOOJyvTHyGjOnqL1EbeVWf5q3Y8ESlZqdvu6
	bCvcmp6YncVT2ofAh/t+1U+EL3x7FdJuf9jrtGOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645511485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=72eN6eygFVi60qT0qTj4vuKJfwy4cJ9Hq0RDhdSTUL4=;
	b=el+oSnpGCOpzlqbaLKMw0qAAyTG4BzxZoMKM0M5QwUuvl5lkLAbtFXr4B2Phe/oV
	DYxmkIaa0WtADEHqmlKO/6aF3bhRVSDyC0mBCyb0R3zoaP9+YyQ+Jxz8rPO4tw0sZQT
	9Z2F1ruIsMhdcioSeS5mRXlQp5iH1sVRHoxxUfzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2020a51b-b0dd2529-4b57-4b8d-a968-98ed3e83ccb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5606dd23aad76bf252045a399908ac5ddb718f663adbed85c9502cdac691cd68
Date: Tue, 22 Feb 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645511484
