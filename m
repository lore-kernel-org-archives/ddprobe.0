Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABD62F27
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645976184;
	h=To:Subject:From:Message-Id:Date;
	bh=lqO0Ot4N5PIAHk9QbBfEJloMb3oMRF8/o/3Y09bObws=;
	b=k5Uoo7qF72a0MZ2OKprE9YVoCy+wBy3tPxkWrCss5hB3eZBYkLgMDzrldRaY99Eu
	GoOBf13s9lKd7bHZHAcquaD44wGlUMB2wASvrI0yuvaWlNNatbnN3Elv+VcFRIg7TYS
	Q8EwgQowehJYvp4DlRAgnsfjZ8WP6BoyrrBfBkjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645976184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lqO0Ot4N5PIAHk9QbBfEJloMb3oMRF8/o/3Y09bObws=;
	b=OKk0Wggxd7hoblmUhIzMXR3DpcFRDhlLu4WWiVI71hqVFJKBVURXMtEl6n1fFVAO
	cj6gc14gWFy4InJt7GsgL1UjeGsCfm16ozB8F7KHiefwsmlYvVGWHq3UFXhsc8VDaG5
	J/2arGnvXdZLAQAf9eUPCHrxEJZT5TtUMOW7hLLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3bd367cf-0e2bcba3-54da-4c56-a90a-ccf4e23a59df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9a83bc395816e3c1446b0dbe70bf6b9b5ca101700e69caa3a5a7a392d0bee28
Date: Sun, 27 Feb 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645976184
