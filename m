Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B177A
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657549012;
	h=To:Subject:From:Message-Id:Date;
	bh=UPoBjy4IPrgkLHjBQn+0owdiCWia7QJkamVQldArrq4=;
	b=lZ86PPOGZdclENd6fVHqDzE4ZmvQQD3PYT71El4FUByi8yOvWZpbGQJU2bRnYEbz
	8nx7nPZk9xu/uC6NQe7XfkQnOrnkeASNfgYQa9xCm0FyACeQ4QeYSZe2QlDpXOMXLIg
	qzved7UFn8v+w370QYXXgtfietJofdXJpbqp1Cpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657549012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UPoBjy4IPrgkLHjBQn+0owdiCWia7QJkamVQldArrq4=;
	b=Z/L/ktZ+8nCHshys3tu4Uhmzf3HwZ/E76BkwQW1a+0ZJKFYjOE77CEKn/rAM9ypr
	onApgx4dN1FhWQ9lLhmlEZqzagXyUdqajJLN4/aPEY90T6XpbhhjyJsL8mHkG6huCEc
	8iLe3rP8HechRKqp1aenu2bZjRaYkd2hWMJeRRnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed9ebd96-8f3add0c-d19a-4e76-ad82-e901413285d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f7681aacf31469a73a5f77b73de9e0f1a7e6f0e79deca0c4e7f02c65b694668
Date: Mon, 11 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657549012
