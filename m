Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A958A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867214;
	h=To:Subject:From:Message-Id:Date;
	bh=Xj1tzsnhZKOzAZG0nTEbKDhRiScggwkJkU8e6RzFiX4=;
	b=eyGp6qJh277VYJjrfQUBtzDFnnp6krSLj6BmFFBWM9IuwQC6mv4JJcXIzonYte9O
	lUy7HdzpburHpDm3++EH8/wCfakbhbCjVRIWezaHWKpEiuu8tbYuSnxxIPfoQA7Xvqm
	JdwAUAX65H/UsEHlmgAszfpoOkDDTinrGxNysR5s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867214;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xj1tzsnhZKOzAZG0nTEbKDhRiScggwkJkU8e6RzFiX4=;
	b=XjPXVzV5T2Rn3LDQ1p7J2W0eHgD0Z2/a5wWpmf0hyUS7A/pzCuZtwpX0xh1ZwURU
	Jqh1sSTwZe3s3NXJQmDUz1HGgXEk6jUlMAbVLDiOmACe67pcpqSCQPQ/+w9CgiWKu+W
	FNEQbtLsnV8DzO3Rcc44LOv6uISdakBW2w6D4Ue0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b9dd93-22c9604b-35fc-414b-ae2e-a5f2f367bb8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b745ca2b29c5a22d849d8a70dad65858e4ec75ad278299cf3c8057cdd61eb7a
Date: Mon, 14 Feb 2022 19:33:34 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867214
