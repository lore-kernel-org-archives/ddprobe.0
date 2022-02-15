Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EABF1561
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644934884;
	h=To:Subject:From:Message-Id:Date;
	bh=61lZFmXo7aEy9glIO+p0/Jvb3ddNQReADAGIGxL/dX0=;
	b=YQWFkmGcCqhqOaTduiANoYsbxcQYD2LjWpR/tU9kdXshO32f5ugspFPQtP/UiEAD
	fhmvGzm2xT+cxbgLlnDoUkxGnMP2TLmd4DfrXeIJ78wfXVXaJFfHZet4bSVgonlwG+s
	Y4ade1tWPsltGJO30dpxmtGQWnjARx2JWnBqau4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644934884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=61lZFmXo7aEy9glIO+p0/Jvb3ddNQReADAGIGxL/dX0=;
	b=JS/AzfqShPdSmK50HZ/DRB9A7MHcgGcwwzgQBKp4vsmNTzuaFSRDoNzev4x9HMx+
	NaOq4lQ4UBB9hnKk8UzBFrG4flMUR176y8efv7w3qmL/o2HnGWIKXPGTVfKNsDd+xUU
	e6GfEpOnbn9F+SoyJf//hUP/QldWVmt/fJlsfGFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efdc26d7c-3d9f3d2c-4d32-43a7-ac2f-38d49e55e6b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00f853bcfc5bb3aacf134e61761c4f6861abb95d73f3f3eb8d4d108b4be658e1
Date: Tue, 15 Feb 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644934884
