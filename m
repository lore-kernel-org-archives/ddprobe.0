Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4B2A52
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 07:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655018879;
	h=To:Subject:From:Message-Id:Date;
	bh=obA7yIGhmxMkdMckMUAa2lM5OOyfEPZR4PJLNpvbooQ=;
	b=VGHXprgnY9jliNFxvmAxGu25pEGhWzftuowVe3hv6i3Ghk1xrHXz+KLtnuc45jbW
	fnp6pjUK3OP80RkvTXMzDX9A3bXY/20ON65D29fG3gHg5m7qh1H7QWNuc3zqyRAAYN5
	iU9HG3Gv6cCIdHCgZGwZgVw0FQZ2K6s+9GTeW21M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655018879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=obA7yIGhmxMkdMckMUAa2lM5OOyfEPZR4PJLNpvbooQ=;
	b=BEUFmW/b6msK4B5LHe6hnoRqmxj6yoyXBK8WhHOyDKky7/grA8LV8UHdFHsmW5lW
	OPRZwTpgVYxwAzqAKWS4eP+Gnm724sdb9sMxhcjkQsK+dERr17EuWlWbSiko/tm1VaX
	S7hHi/saOlsq+KKDXElkHnVCUOKbb4FAimbChIk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018156cff928-8aa76540-9944-4bd2-a73d-66c92bbe497e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79675b168924d6086b42c1575858fefee2090dfbc7317b85b0bc741c738f57d7
Date: Sun, 12 Jun 2022 07:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655018879
