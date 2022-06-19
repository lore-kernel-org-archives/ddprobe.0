Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCD17B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 19:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655667599;
	h=To:Subject:From:Message-Id:Date;
	bh=XA2wumBJARfS4/z1ctiUqS1sQ7KYnSgVCCZDGM+qTEg=;
	b=TEFf7z0cknG+zXmCWwJxYTCc7F2Kmt1EQiPmvyxfkkNOYPo++RQW8tvwND1Iicnh
	v0sUe0f4XRpxpzdkavjDtn1UOtPy1n025w/xJRMuvfH2kGd6Qjq4GsBXDSXD0hUKdCx
	7Y19U2tUQnsqO6WjMljaSslxtEAMncgo+Rrlic6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655667599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XA2wumBJARfS4/z1ctiUqS1sQ7KYnSgVCCZDGM+qTEg=;
	b=Do8Vsmr1841VxL6ah0RhCYU/WF2akQEZNg82Rzo6h4eJp+G8YvPYmI+VjiNxwIYy
	X76l92+slhr2H22RwRPYsfj5MUYJx5IUBdj0OBcHtFBTMqtCgpr9itEEWgN4ncPMNio
	9ApypC2twCwIGlg7cRAf6kXq/EcYFFij9NcaVt8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d7aa7ad-19daa426-45dc-4f4b-bfbb-867d344a9f9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4c77efca4ffc9245473ae104a2d3dfeb11011a80900bd6fe8256e5dbb2dad4c
Date: Sun, 19 Jun 2022 19:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655667598
