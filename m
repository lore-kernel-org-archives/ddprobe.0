Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153703C1D
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 17:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656782812;
	h=To:Subject:From:Message-Id:Date;
	bh=2k3bZuCmFFvDk1lDw5ogHdL2hqxfuj0/0Y4QM0kxNjs=;
	b=VlsPVtP7fOLStCd5ctwi6sxHKNcmWyYNn/UW6wFl5JRKh5+XF4hO44nNdBIL4A3b
	SKyqDB2AVLkNJVDukzCja15Qj9hPMonbSToc+Yq2Kk3nQ/JWKCUs1fCqe0afKKwbIGp
	LInZPYjUHgKv3FTRAwzowDw9hFhliPbJQZbQS+lI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656782812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2k3bZuCmFFvDk1lDw5ogHdL2hqxfuj0/0Y4QM0kxNjs=;
	b=DIFvovkKldjjd1O8baAsPJvPxg+snNhjyi8nqe1qCWZXappSVzM3GE+RmfNAp3KJ
	kofngO64jmjCrYrYeI7mPw8GQ6nEcLX3C6C8c6VGupGYUBngezJRBj28zKbJAk1zEq0
	FlNBhF9OSAj/xDb9c+p6KlJBdgmYmUWpYTM84Tqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bff37472-2bc66765-aacd-4098-bc55-81de244aed8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 519e748bbb69fbd6a5adde087e5a36827fcc11a59f07dca8d636e7f74347d904
Date: Sat, 2 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656782812
