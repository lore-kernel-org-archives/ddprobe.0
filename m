Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877ED23AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646582484;
	h=To:Subject:From:Message-Id:Date;
	bh=AkKdc+l5gYmZ2hTDwApUPtquPkvRaKvoCeiD9WqAR7U=;
	b=e2sGymws4b30qHOOn+Dm0D0dS5c+wTD3FcnLO5b45AvmElTJXBy3GuSHHMiQ18w2
	Ui5RjZL/Cz3zDODegc3joImoyOSzg9cc6AR6fe9SBgLqurOjOeJPIdyRnc6KkHmShFs
	IwKy27JMVB262GFwHmv1+sfyG/CAFG1OHpiiaW4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646582484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AkKdc+l5gYmZ2hTDwApUPtquPkvRaKvoCeiD9WqAR7U=;
	b=X3lFBBSV+1EDZ6w2iAsaDLabOBzZRM6VcjoUR44sgApyStOLHpUvuUek+/v6hwIl
	08oJ+Ln5iT8fEVjEOrmEeWjPR0dGq3tbnJ/VMmmfTvJDqMzRPSs4+N58pWzDYxpdq6z
	5aTlGI7RUN3ZN6LS0fzuYnEcD7x2X4nhuP0VmsNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ff6ceed-80864796-eca8-470c-9a60-25e449eeaaba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5c5049669f57378f3cd655bafa3b7fc9d4cf0dda051a00cfb0b586fe4c6fa47
Date: Sun, 6 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646582484
