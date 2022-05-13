Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5459820F3
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 05:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652418179;
	h=To:Subject:From:Message-Id:Date;
	bh=rlZFw9JFWdshHEGpf3Cm/iSrpaNEbu/hPasNvl5F78U=;
	b=jxakzhtRFOYO+vKWJRaUXYgZNmrCLfh27zgnQe7Ax9GBGD0nOVVu2jfF4xflu89Q
	u9pguDahWfkZM/nsVlY1RtqjDob+kBPqoJ5xq81ab3jB+LHu09k/VlT4eJ9lsmspm2J
	hSshwRBdU/uTClLNWXAWQXAd5Q1JKFGmVhOHxL4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652418179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rlZFw9JFWdshHEGpf3Cm/iSrpaNEbu/hPasNvl5F78U=;
	b=bJo1OB1AsAYiAlA7kDYHCKnxibalQ8oHbeyOScVHEJwQaxsQnIdsyh4Y0F0JRB2f
	6+Ly/9MwExxUZlOF5a7QVSZckSRh/G37Us9wFmf+al5XXNFtnt+uqgejTxMpdwm+bBs
	49enbXTsTNl/kfjDTW4G5ztQG6TQemG4BpZygga0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bbcc70d6-4a3cc89a-eca0-4f01-b47e-b393fb50d770-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32cb91e82e47621c51f98190903fcdeb96ffe9dbdfcf06332399b0fad5003ccd
Date: Fri, 13 May 2022 05:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652418179
