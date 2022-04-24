Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1904017D1
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 05:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650779218;
	h=To:Subject:From:Message-Id:Date;
	bh=4nnRa9N6vX4IPgrVb96OVbjeD6xq89gQSE2YWjCKafY=;
	b=k/89oEAsvGFIEJkpkKjfAoKMwWBUau+tp6+hTKldf8OxEESJo7HNMVaMQf7JFg8c
	Q0njl9Yy3RhlWJHj33z7tv7LB6+3Dhq4NxMz9tPvRxCq1/O6br5/tkJKhVh6tSd9wYI
	OtnGBxb67Gc5FZZ++gQ8h3JQvul9LyDPEdXr0sW8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650779218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4nnRa9N6vX4IPgrVb96OVbjeD6xq89gQSE2YWjCKafY=;
	b=FbjMjOU07+aROleW83mLJ4Y1LlBiMRCzHF2KUKwIwmDsohEsBchNq0eTCahQ8jbh
	NbIpud7VH2uNDV49DQ4o+9iEjzZzqLrWSTnTKKYhiIRCzToK/mr365sBT6ge7uLJUng
	/rxmyfGK+1how+cTNBU1rJJ6M9M+6fHFBrG4X9VI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805a1be1b0-05c338f2-e8f6-4dfc-887b-69925a49e172-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed75bb47bdb328c12c6903802f13d717d3b4a5758a1f2aed70d223206aedaf65
Date: Sun, 24 Apr 2022 05:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650779218
