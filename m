Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E353633D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647007285;
	h=To:Subject:From:Message-Id:Date;
	bh=NDurG0BUJ8ZVayFNWNBgFnJbOEaYBs4syh3jUA+55cw=;
	b=k8F0Mrmn49vE6evWoe5luQMTBNc6Z5co+BLwkR8lUy13gq9jlVfdvawLtvkInRRE
	g9Ix6bQIiZpo7zxANg7mNDtru8aLZpte6YzOnUvV2GtGpIwUBOnM5+nIWhyqIxFj4Iu
	5MWy0JJYVqYoxJPWkffDLwE8KkWkTQaxmiZvKzZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647007285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NDurG0BUJ8ZVayFNWNBgFnJbOEaYBs4syh3jUA+55cw=;
	b=VGFH1bSrguD4R9nu6LA4JSkejoscSCFQ4y1SNOparreCg3TTpJuCWF7O1AknyaPv
	a2CTNynv5qIfiMokmu5J8tEL+v+bQHkMDzMUB1Tk/OYd9RTZ+eefdyYlSoaXXqNh2p2
	VTvekZLuvsd2Z6r0c4Pplo6z7tTirEe+PbwBYzPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7948be40-0e1055d8-053b-453d-ac5e-9fc3cc0161e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f14d236438f3356b51a401fc05492c24fe9e891b7fc2e973a4016d6177b8d36
Date: Fri, 11 Mar 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647007284
