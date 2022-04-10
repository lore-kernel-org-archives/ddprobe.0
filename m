Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF407FC
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 06:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649572558;
	h=To:Subject:From:Message-Id:Date;
	bh=V/RxEmgDtg6mWtEERwbH/qzMTyRMMpRFg9RhZ3u3zbg=;
	b=EcoOEbiiml8t6YoJFxtYamxuN6+T9tza554uMGBULIYYLyFfoz96yvICgIovRDYH
	XlY+22fnrcDXhqGG3x00EtY1aYXZ9KkZ2q5PMVi0sSLu7i7E7eCNog+3RbO4FCP7LXC
	HilD4R0r/jw6s4UxNtnWMxWf+qWhYWmKJLyZBtlU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649572558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V/RxEmgDtg6mWtEERwbH/qzMTyRMMpRFg9RhZ3u3zbg=;
	b=Yd5a0ixChtHbb6G/UmfMqFEalXf8eIWOQ/LJC0liXklTE7jgpP5vwMyzTqJ3+8zN
	IWuGLGkSN4sOlOOyWQMy30EnP/UyTg55wY7BWsN5DNEBfG1ipWHUMDmvOBZx4Fvlqf/
	6wkh2KVErPJvQXZMb1+YjB+SHbCQW1i3zhuiRnWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180122fb5d2-3e86ab2b-4dee-4852-9837-d6cbdaec5d66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e1b57606ac3a68625a3dcbd21c28ad41769a22dbd1d77ba11c96b153e5a5c4b
Date: Sun, 10 Apr 2022 06:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649572558
