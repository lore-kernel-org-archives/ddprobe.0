Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193271FCE
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657529212;
	h=To:Subject:From:Message-Id:Date;
	bh=d+q7JgaGJaRKhWC1RgU23BMcri/Y+5uGDYo5d1SbEfE=;
	b=NCAvlT/6HAoE6ZeUU1XRNI3LDvxZGhsUTDMOszl9mv5YlML19ZnxLegchFlBJrFL
	sOeePLE1Hn7KTmwldFv28tXIpSxG+4aIj2mlEJzAW60qIQwz3E2mvCYALnYXgPozamT
	drwXsaDuhSYYCz8xRrqPLyVpbZURAMFxGRyy+seE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657529212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d+q7JgaGJaRKhWC1RgU23BMcri/Y+5uGDYo5d1SbEfE=;
	b=NQqpSciQy1gURhNzBY08lyrfzf+7H3EAdLzlUff4ZYZj+0m4nibWtRn+5I9e/q3A
	eMbqAvxJ5PwUZQPBnlX5B7L7IShp3oOzUBstSMFonw1E2M3zqeAc4+S+8AudrpoQzLS
	gymXTWGymr9QdlEmtSi27qzz+RzSUttx7G6eBihI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec709d6e-0b108a45-e089-4be9-b9e1-51d94ad2e63d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc3fa3b7a82eda14e3360abe5df824f438b047be8b11bf3a77991ec8e976e576
Date: Mon, 11 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657529212
