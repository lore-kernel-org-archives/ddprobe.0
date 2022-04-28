Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6BCEC2
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 09:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651137718;
	h=To:Subject:From:Message-Id:Date;
	bh=s1XmV/QF/3mW4JwU95dSjdp7I6PltLD/WV/3LEivY4U=;
	b=frluhSzdzAs90K7LiWi4FUFUzg5cesm+5XcLR0IYTCp4EjCIBAQl2C8JlzcvwycK
	3KA9o5dG1iBylyBqKdHUQC5tWe8i3AQ5hOhItplC/d1JXiBiQBz+ubMRHKDwhV7D/1S
	LXzT89Ak2gZJ8OlfAqv3TB17IXUlGO/mIytcgM+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651137718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s1XmV/QF/3mW4JwU95dSjdp7I6PltLD/WV/3LEivY4U=;
	b=QAPl71GfKTuoB7D5jhEyzL/bI3wBNQvFn61OgzE/XARjmUkz3+OWUank+aiatv9J
	HYXoF78Ykhnqjdz+KPyZc+Nk0uICIW06Hhm/nDVmgiVoWkQcOGnNXB4Bvurv5uQXu4Q
	ghiw0cyLouSjorBWCDN/72OwY9jGxK4P2Xin/Owc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806f7a27fa-c4ec150f-9d73-4d23-ba4b-105f0d8e166e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2eef7fb2e11af655a11cb5ecbd4da4ae7c8965c3ba1c7d22fe05cb45381edb8
Date: Thu, 28 Apr 2022 09:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651137718
