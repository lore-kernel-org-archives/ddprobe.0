Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176517E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658567812;
	h=To:Subject:From:Message-Id:Date;
	bh=gW1YajkjIuXo1JCqA4lVnq0iH/KMx+dL2NmtGc4RSkw=;
	b=k71gCkSsg/dSPsbdtr2TAi5Eys+Grg8JtLf7FYtwojLQWHkaFwqWGP8nrikmoy+X
	djyraawRB7NqJywNeNPPQsE4S8jOb3qwSlbcHaKbMJjZl8dCKUMR2lxF6j5+SmNh1X1
	jmdu/1EUn9bXAx1KSbWSmHsF5TcU5c/agzFGMBgk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658567812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gW1YajkjIuXo1JCqA4lVnq0iH/KMx+dL2NmtGc4RSkw=;
	b=M2l1ZS+fUR47SU7ndFZv/oNTGCmX8CKzcpnOi8l3lnqQNaZM8nY12RJZ3gs8BC8Q
	kdxLHjEgyFEk6C9hU8h8QGRCr+VJYslD3ZYoN0DP/jvVplEAEKCwoRVfv8pW7x+/Dan
	0fKdpDctVhHplHNIxpG801nxUyVoO43h31CIDyRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a5864d7-c1b7b877-40c8-45f9-8924-b9a8c1a9ea4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1db6a20622d600bcee623e50ed2f9dea80525ad41643f51f1e6aeffe63046ae
Date: Sat, 23 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658567812
