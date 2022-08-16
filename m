Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690361108
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660660252;
	h=To:Subject:From:Message-Id:Date;
	bh=JRvlbX8sQhnPG8U3BXPQtvdTRjFQHH3xZ7n52Z0ws6E=;
	b=K+SmuY6QCzLTifW/62ZcezZ7e29s0XWnZqwkPr393YMbsnIdtGVrUuDjtGa9ko6D
	7kae8FC3MRh9OhgLRTUWdItQC+CmCMpYhWKy0ge2JefKO01al1Ry64IX3CSNDdKu/Ff
	/xRJ2cKY6qwT5ZO32vRuVBkpt6EKpD0V5FLXYZU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660660252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JRvlbX8sQhnPG8U3BXPQtvdTRjFQHH3xZ7n52Z0ws6E=;
	b=kdiqxpKHx/+hbF0istoLYIewfXfDdo2KH2AmC4tnt4jIanZPLoDzra+bkbwW8j6g
	AG+xLiAIPQHrp8cDtf10YJ+LTgk7Ekk0mGdXk/XowWZRCw5rEr7KvCmGUDU4QQ3V8zj
	SyDNQNcd2FGbWOPwLHXaoWHuKXN3d7sYdLkH8rr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a7108023-3a7b1866-6029-40a8-ac7f-8e7432a210bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b53f51d44677994a0723a83a8e8345739dd8e9c840f14dfbd9faae008ccae73
Date: Tue, 16 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660660252
