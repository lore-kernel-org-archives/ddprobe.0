Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED917E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 06:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655707559;
	h=To:Subject:From:Message-Id:Date;
	bh=3mBkl+AJ6xE4FY2bkoUiQxAq1owmZTLAwDG4UEchNuk=;
	b=DnqjvuRo78Gw7JJx3YX8i38sX33BgcYQzMGGqRmGeGImf12irPIHF6lwwQGLY/3N
	7L7UWb/Dp1CzqoqNvFrxZLSZa6GXWKRVQ1GwZMlfJg4xCCdqRHDAqYa9DcPgfxdFyA2
	eggB8nfSspVD5fTgBUMkfBVec4d4O8dSrLQwkeyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655707559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3mBkl+AJ6xE4FY2bkoUiQxAq1owmZTLAwDG4UEchNuk=;
	b=SOvBayIf8F6U3UheqOfd+tUxHUk6njwDfBaBky9I0oP9HijbUKjt/KBju7sRLpWm
	flakDTWkzFgjpR5RwceIqhvq+fhHrqaertgIhxQQYG0lsnpMfCckGMkN48pDlcOYpxX
	eEAOWD1h8BS0J6ieKpT/HXhM+Qbx6lhUkYIU4OIg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817fdc6524-54a3b3b4-8324-4e59-8dc1-a4c6c0033861-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65aab30c5f2c77b38ebac46126a1bb81c80c36f7406f4e6127ce3eef6da157df
Date: Mon, 20 Jun 2022 06:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655707558
