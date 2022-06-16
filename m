Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B75D7E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 04:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655353379;
	h=To:Subject:From:Message-Id:Date;
	bh=n1GTRXS5d2cAucbnvrs4Fd9950gqxf1kGy7b+Gq+t9A=;
	b=gmYYlNS982ZsLKk4KY7l0I6XFYbOVBQ0qMDgRIgCyEQPYAFUXK0PLeM+GcNhE4jQ
	B855MGqMznx2TU+HiLqhNyU/em5aDCVzUpURIPl8OQ/6Rblxx7igHIRiHE/LMKXqg3N
	STEmyVOFUza1yI5uzdl5DoS4ziknzgLIIHOHExHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655353379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n1GTRXS5d2cAucbnvrs4Fd9950gqxf1kGy7b+Gq+t9A=;
	b=cLu0QQaE3HdU01ZuAwBzBCdf7Ch5QOZrH4uj0W6j8b342ey54acbw7pbd9wpThoZ
	i0OqqgUdfB00uc9c57mzsJOIWSYaE265yDezH7uYpNRI9MIwuHW0sZdlbaGX06J1jMX
	ptXRHFMUxrKCxxPb0iOgHWum+dBiMtjzotJvSPOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816ac009fe-dfbc394f-42d1-4a32-8d6c-5e106a838238-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0266483a0f75f4bf5cce9e74b503d43ee756bcce4b69a99118c44fb9ebfb3d0
Date: Thu, 16 Jun 2022 04:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655353379
