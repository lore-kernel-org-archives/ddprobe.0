Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B9F179
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645344385;
	h=To:Subject:From:Message-Id:Date;
	bh=k4AfxYFYmjBsz+wADs7r8GFh2srFYtqykWdZz9GFzbY=;
	b=eNuhMrpZtxyqUOt67cn2wYLZfOf1AAZ98XovhlEXXDRfvpuiGhBkZ5bE476xtrWg
	s9dt9Iv+HnAjf1PXw5BqXhNhNlQUJXlOn/oyTuI1agy9UUcWtRUFpaZXNiVUezFPXia
	P5vRwQBMR2ZaJoPreTY5l0KZTGiPLvH+9HdbeUNE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645344385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k4AfxYFYmjBsz+wADs7r8GFh2srFYtqykWdZz9GFzbY=;
	b=TOemPuwwaeIRqqhjEI8uyO73Hz+pSiq9OMLSkt8GsExRFjDbERwTEaqOGx4BSBbi
	k3L1qXEWi72DTcShxEUYKFJmNK+uZnGLS/+9r0HySUvK/bZBqKCfb3U+obeLoM6Ohm9
	2uUlAYa4nBzYhf5YtB07bApeBtWEsCMxOlUP4u50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f162ae780-e42168f5-f636-4353-bbd4-b8f3604a9d94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cdeff0efd41946620614e1d6cdd9c8e5e0df2b80daaab0db6af4282aa1f0d4d
Date: Sun, 20 Feb 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645344384
