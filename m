Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421C63B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 12:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645879585;
	h=To:Subject:From:Message-Id:Date;
	bh=cM/yS664VhrK2uuG8ZhRy2w+O2xfnQVL3TTJKjHwpZM=;
	b=A0RwF5cPV3gEGXY6NCbNu9HwZ3zGmq4unhr3ZukDTjDDnA6FgEuusovsO3B7wf8c
	oK1OUbsSrdZkFo9SZX/OmfdzEBI/UJwH3eunM7oe6168za/Z8RuM+TscJY7Y0jLmC7g
	SNHN7QvKk2z5TMwnlzAcbAFqUAV9XzO0aUE4JE4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645879585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cM/yS664VhrK2uuG8ZhRy2w+O2xfnQVL3TTJKjHwpZM=;
	b=jTXuQZM+hL3EPchwamIfGnViPOWoHU8V7NIOVatf8jWKYvz2D6F42gLZnmdU+4x4
	1EekbFM17Ug1KWO9b+o1Jl5xcqElV1RudESvB3zNC5xTbBCvy+Z/g/mz5uYJE3+xyHP
	k93TuJHRoGqeryTDq99DtD+xR0cP3Y5b/F6wy7G8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f361167f3-47cb3ebc-e373-4465-b009-bc049c1af13c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d90cce3d6cb95b445dc7899a90da198dcd275a1e175f9cfa7006e5d051fc4f29
Date: Sat, 26 Feb 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645879584
