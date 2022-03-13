Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E01C7A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647188484;
	h=To:Subject:From:Message-Id:Date;
	bh=Gs7VqWwAkF9pAN0g1flE7mn3IvSxzxg7fuLkaXjZOqM=;
	b=Q35vOMgfDYB8jpmeFFF6AEilL1zZS8xKsTXV0FHvZo4gvW8ijo3pWe/twNwGYvSK
	QMT/z+KlGQlqgxVlc3hc7KnEpwALcdXvqsMA4KD+w/9bLufLAXskJjunjr+0q3NfVW2
	O5JAAKg9HwgtyQU4CqgQlRehiCX81yAzQGh/yWYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647188484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gs7VqWwAkF9pAN0g1flE7mn3IvSxzxg7fuLkaXjZOqM=;
	b=FFjVEGQFrVQhEz2Waa+2piYvggM7UsQoPkaChLzKKwIIA4l1WSE3T6pCdOuuOkan
	FUvcOkW26wUVX5mdxABtTgSfek0+CTjlIezG7YbDAblz8yODPF8d2gZi4KZQyCplyZI
	iBUzL0LafTaty9h4Vc1lv9XaTI3XDZ6GwCzp6pbE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8415a2ad-c5b5ee4e-4e5d-4fa0-ac7b-d50c8bd9c922-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db94590a80aebad3eeec0e1af55cee7d1b310e3bb8c16f1eeaa3f1cd730d13f4
Date: Sun, 13 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647188484
