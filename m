Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9587A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659888052;
	h=To:Subject:From:Message-Id:Date;
	bh=7vpqs9uZxAWBK8BWGE7T5STeGvXfpDMcHVg+qlxWGvg=;
	b=Uy0ufrmSfhHgjRIhjNPYfP0S5QvOpr5/DoAX1bgG3KH5ReBuaErv0TlHXSrkmK5A
	zHkIJgOv69dI1GfuhKNaGHhMHsI/VX6Op/OlH3oAogvGm06XGcqzq6q38zsuymFFUxy
	fxClCIUbglgf6nZjpzeG0EVg/GQJuhakPHwWd+EA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659888052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7vpqs9uZxAWBK8BWGE7T5STeGvXfpDMcHVg+qlxWGvg=;
	b=TprI097yGYb5Lo/kPwDdknEuLNvC4H94QoUF4f1KpXX56XU3tvm4SaTYl/VH4HzE
	2Se0kCgGgD85r6YLiZsvUEUGcHcFugs+IRDfVhzvN+KQBH4K5WwzLuPlG6LqE07gwP/
	BI3TPbzbsB5VDui1Caz5iT4E5aVvOQjqCd0AocSo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827909a966-539ad008-039d-4f93-91ac-66274efd961d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2b31cc5085d44f4e815be4337ca13de5e1e5dc5d2e5a20fa25d6dcc743ba87d
Date: Sun, 7 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659888052
