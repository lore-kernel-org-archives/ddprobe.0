Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77638620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 05:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647063984;
	h=To:Subject:From:Message-Id:Date;
	bh=jHpA5zgJaq+RkM3EKao7zVF6RLyIOUixwiNiuO6xocE=;
	b=balwXrWVNyulYWCpfeKynAspBf5yJq15NFgjLnUyszMoPHXGqktOf9A2YAMYMwzn
	1FB5rGmhfwSbfJ8glu0NGdTW81Gp6jR36ba+eDGCJCjmnQkjX3jQIWPI0c4YZlo5xpA
	c5E0hVRvzlt005X062HGcq6HxozXe+x0XWSprmfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647063984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jHpA5zgJaq+RkM3EKao7zVF6RLyIOUixwiNiuO6xocE=;
	b=HADDrjZLcDlE0FjOZ0wI2HaMQqYMCOLk5b1WoR/kYV609Zodg3XwJObydnfS+Am5
	tL+CnZSuMIJ+Eq2lFeKHtlroyJggIAYzjvaoNQ7VHdbuud/jJldxLYztuwZ+TCF3Xxn
	YOITOF95EJ5XgPAGN6KSEtTn+ZsymqOuHsi1npZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ca9ea8b-47412e45-1b49-4b7d-8db7-01bd70f8f91d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd412cfc08387810507bcc7d1f37ba6d19566d22c36b42ea71a3268088410562
Date: Sat, 12 Mar 2022 05:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647063984
