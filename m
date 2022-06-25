Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05497C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656167212;
	h=To:Subject:From:Message-Id:Date;
	bh=YGYb1v+hx3TIUrebq3NrB5br45t1zlfUxH/WVI6VTms=;
	b=lO/BrCI4L4D9XFFGVC9Qjg5KqRwYopA+rr9pNAzWYfXdQSDrFwy091qTUYMB6Ik6
	ca/yGGTYAATr7myR1WuYXEbjTP9AtaO6UGUcMQekimQscvGcdrts5jMkbH8SlMpz/bV
	QNYv3GO+WaH2PyJLLvSfpMtyt6QV3/DX87Q2TkJE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656167212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YGYb1v+hx3TIUrebq3NrB5br45t1zlfUxH/WVI6VTms=;
	b=i13mmV7Q1yn3Q9eURj8ZBkMj3ZBA21FZjpIy9IneNahb70taka6OVx4e6pU8DODP
	w0Q4DG954yLYk1+mjW4dfvR2ti/TnktG3O3qdpAtue3YygSnPNbzcW8WESqGNhw0SI4
	vgLq04SMN+2oVZ7U1ZRJCa65PMD+jB/DCS3EaRWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b422518-b0560462-660c-451e-b52c-efb0eeb6248e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa30a7ba97e9392cecb73b10c141d6f4b84b41ec3ef9aeb672a782c9e67b509b
Date: Sat, 25 Jun 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656167212
