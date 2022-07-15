Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 888BA33F0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657898813;
	h=To:Subject:From:Message-Id:Date;
	bh=2ww2nk/y+Wm6gdqKW1xmiitNBIsV7DNQRN4M5QW/M1A=;
	b=XYRc0ki+zQmCXCRA8M8gWsS7cniOSLeBzv0CKOBoZm5DzzyAaXiBeRGuVDweh3u9
	Ol1fPxYuq92ApPA1SCaor+0TNJxc7Cotsh4mFNbYOIoxDnWfJ5Dfu0pbroLvfzFDdRz
	AdYzjZx6BafeoZYNVvwhmff2RSRzMYXxZ/jc1q/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657898813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2ww2nk/y+Wm6gdqKW1xmiitNBIsV7DNQRN4M5QW/M1A=;
	b=A1T2AkOuZHYUnq6tawmM7KETKrxD6wUIH0mRIZTRh8boMNmFGo9DFV4mxyyjUJoW
	q3r+NAD2LYjYrFdKenP9dwyrgE/VosWEj30blo8fZqPYMPRghc0EiF7gxYg3J3rGb9N
	2d7ar46/o5804ed0Uql8H1dG6g+ZE08SkcmOjOK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182027843ce-0211935a-d17d-4091-a422-4e8b7acd1d0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6efd68fd1dde26c9b7fe3567d908e1b7100585d8ba9f41d15791d57a141b35c
Date: Fri, 15 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657898812
