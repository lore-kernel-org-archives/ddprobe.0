Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84485634
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645542085;
	h=To:Subject:From:Message-Id:Date;
	bh=ia/QafDiyAOSsDabzdlTi43MKzMs+hj3HLExdgkDKko=;
	b=b7sHAie5gjQnZymiJj1TN0a2wsnuAQWUrCJ+jd52NS+AnKZi+9omIyduEHTMxPMa
	1Cl/iSpYivAzm02jwr9e+zODTqni8pZyeekfzDbrK3i66owk4lj4KCwY/9LcadtGQNG
	0ifZhOfQmBRbilIItw6dwPIeqVvl3hYEPIFGtgD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645542085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ia/QafDiyAOSsDabzdlTi43MKzMs+hj3HLExdgkDKko=;
	b=EV/2d+cypMwXv+LxeqE2s3S4u7rOvZHMixZl+6Cttu5GRGy4O+lkjTzNEq1tznDm
	feMrG0+dYTwtjFqjlEwxsQNs40gCEY2FuJtzP8UDxTCU878ll2347un59dXoXx2ExUt
	FAvxwUFRcnCw8qkBKs7aUcH9FRiQknZJmMnmUw9o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21f390ce-c8dc91b4-28c6-4cab-85d4-37dc7f79bd61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bb720e566c0b86fc15c3e0c3abead72464bee04b46cf097e3460266e5afaa29
Date: Tue, 22 Feb 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645542084
