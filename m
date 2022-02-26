Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC97E38EF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645866685;
	h=To:Subject:From:Message-Id:Date;
	bh=Z3UUiKB8M/JjA9XKWct7nRqMVnjyK81BzJDBzOqvdew=;
	b=my6aFa4rdMfOJffLP/v6+Ra6v39AjTLbbQRlQquvNRMB5YoCvdOVdzrnvHa4w1TA
	gNvAnQkl1/j7RgF72azR6+TPyMympcVGdcFcJHk8pwcBGC/zKpVuYsbWo7P/I5lJ0xp
	jyX8D/6IuFEohqP0tRYalQ6F9JRh0n6xBlQA/5wg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645866685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z3UUiKB8M/JjA9XKWct7nRqMVnjyK81BzJDBzOqvdew=;
	b=FBFGT1s+MejzoFP+p+eRnIV4L4C7Ji+6JyTI7fsrZe2+kYNS/hBuMVYO6Up9d/zM
	aOZZ8p6C/tBNaZ1ClAqQAV38gIT4oZR7TLlNvFgYaG7kJlybdt7HuGtwz8daEPaoORf
	Mgz/UFjUiaMpkMx7xfc+Kq5Cw4TpURWqO+UzTBbM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f354c9188-036f7f7d-3d55-4109-89a4-0581098c97ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc0e876cf7d6f290841e48e9edc43c973dd148369cc98bb0b2ffeb249f2f918c
Date: Sat, 26 Feb 2022 09:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645866684
