Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950B615C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646076085;
	h=To:Subject:From:Message-Id:Date;
	bh=HkxaqKC/kPzz6qJ2HBODAq3qi2l3Woeln5/RIzHB0hA=;
	b=OiLO40U17HvblcNcgcv8qEHCJSX2lE+or0gaWMvdc59+CiPrYGJb8kpr/gcdzz/c
	vBs8LqJhwMjzdTBxE5LKhY7zKvSJF3MStUwHtCuiqcdncx6dymZ7YRtMq4kOqeRNUI8
	JKHlW7HnN9bXmOpfb1z860ywt0vx/0cF0uC+O8Yg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646076085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HkxaqKC/kPzz6qJ2HBODAq3qi2l3Woeln5/RIzHB0hA=;
	b=WsDlkuLzHeFoySt8Qn48LqVkbXTbSos56VPoiMU4KgVhl5zmnvkA5vhdC+xK4Q2R
	TCSiRs1HdwraVjx8/Zrz+VYJERlQY0yvyntvCa5JvOm7eYSNS+1xZFbs/V8Vw6uBm7U
	+7tm2EbQpNMBC7zwXSOxWyyJAdtLTaecAFhYEdfw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41c7c233-d62df8d5-62db-442c-bac0-0906bf6ae4da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e97ed32ceb4a831ec74f0ad9b9e6b627768ff58f81f7f1689f305081fd7a93f9
Date: Mon, 28 Feb 2022 19:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646076084
