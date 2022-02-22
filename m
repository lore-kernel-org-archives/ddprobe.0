Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6945C7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645493184;
	h=To:Subject:From:Message-Id:Date;
	bh=PCxA6rGPCXjL/SGuGQF+xbttNMH+2bjm/qmn2b60lXI=;
	b=GWkMK04YYh00I65jIxmC1FpcU7NvOf1G1EyXZmYHTKkVeNliX6itWFEpiAgHJy1+
	lvsli2m9c2NBbgO8u47n8lPk2U0zg52NfPSgpiS6pOj0i2RW+FRHFpIYbD/WTdSPzfX
	td2wnNSZ+o9Hy/UkR6r8MNvcyRLd1RNFXzxs4mf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645493184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PCxA6rGPCXjL/SGuGQF+xbttNMH+2bjm/qmn2b60lXI=;
	b=T+copWG4SwOIOGYx/zxAb/TGU/VtVRl8GwYmqRX+YLpFI1SHNcwrvBh/TEJcWKF+
	93uEj2VbH7b4kH546zOfuT9GQGcWZPKiwjuJafzG1/6aHTMCoGwssut3hAf105p4pZ3
	5EZwgH/ivLoYJzzkcg0lsWNGcxd3b+kAUd7XA7II=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f0968ea-58108ede-96aa-4b87-9f5c-a397741544b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 987cb9c01589b8b6da89e1989876b40007eac503f87ff9decf3cfb9e8286c5c2
Date: Tue, 22 Feb 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645493184
