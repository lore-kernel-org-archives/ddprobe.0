Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1E2360
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660999852;
	h=To:Subject:From:Message-Id:Date;
	bh=U7aCL70nIFelRp//Tn4AjPRdWrV2V27BMnH85Ur1EeA=;
	b=j9FfhgU68/BLXNVQiJPYsIVjjvmF5E4aCsgkn8IjsydGsJvmuB/zVhFYUAaNqXEY
	3yuLbRWiDkBi8kNU0m0zJV0o0MLTo6EZjtis+Oyq1WBtqy2QP6eczgMK6tOU1I6Qq1o
	V5W0gCmxr3BAF1ohiwFOa49u9wdxiK+buxLwhHn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660999852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U7aCL70nIFelRp//Tn4AjPRdWrV2V27BMnH85Ur1EeA=;
	b=kepMxFsuHyaXn5XVvmv/LehO+6jNc0H6fsA973nDa8kLS8vKZwmIKDhOHRYBXZJq
	n6in03zAR0N3UjM+eHQpXSx0GO+LTZ9luFEaHmbd6B24Er4V5nT2UhmP5qT3+hn8HJk
	/p4omtK8tH7TT6eBZynSQJWmdc6MR0yATOWCjdvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb4e629a-d474eb41-5575-4864-a9ce-a3dc16f47cb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32282847345a21eed863e31016b21b03aba7b291e969cfa79fc47f121c537897
Date: Sat, 20 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660999852
