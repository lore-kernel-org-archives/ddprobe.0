Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3322A10ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 04:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648094698;
	h=To:Subject:From:Message-Id:Date;
	bh=uEKeGD1hrmCzBfMtHSSXZMizzhmW8VFZ0zQQm/gkVk8=;
	b=A1CT0b1q0OFF+Y0WGlstYx2OBZ3UkUx5uzF2kTuIzAyljHBUJSBH/FbW2kcE+DDh
	VjO7dbd/tm/Lp3LIAxovYk2u81Wtxu9QrB8qDHJKo24omCCNrpsPBAJ/erRIEPI+8/c
	BnUJoy6ax6VqnrUWhL5YVvo6kttSZgjquBXPscis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648094698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uEKeGD1hrmCzBfMtHSSXZMizzhmW8VFZ0zQQm/gkVk8=;
	b=ahp9OU6GMQJJLuVnJThGOH3YB1QsRzb7NtcF7lAQGjgRYkIeYnDFReYpyqfPujAN
	T06wIzyH4ns8a+eE8lPIxnpqmridHfa/2PEpA4jRt8hYBEqC3sknl3U8jU0n75JA6Hh
	FpZ4rPXhH1myeotVpEkA0y0MiZIel8Jm50i39EUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba195b39-2e2608ad-7d06-4ea6-876d-2e1bcdaf4969-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d6d015155786a0d2c156852ec654c48ad60fe8eb9d952fcb8ea491ee09d4a4a
Date: Thu, 24 Mar 2022 04:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648094698
