Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806E35580
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645294284;
	h=To:Subject:From:Message-Id:Date;
	bh=R6xAuGqYHpeKCcS7a74YXsbWFg0Bf0QWETp9R1ToP7w=;
	b=f/MEk101s1a047sH2kVZjXURT2xPUEQNgbcpRI+hnqW7oJa9T3mNQcYhwIajwo53
	oGR7iRDqknoOk4I+mVCspt47vRD387I23ygV17GcfhEiOOYo4R993CjdZsUsyUPTRL/
	pjH1JRa5P0qMwETMmQZyXHhgTozv9Up8hW4lREwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645294284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R6xAuGqYHpeKCcS7a74YXsbWFg0Bf0QWETp9R1ToP7w=;
	b=Auida/sKYydClK2wX+NnxJSLwotwLa2DPq2W63g7jCfTBYCNI5fcidC41gBW/ddB
	CRd/BWj65geyk+Z2s+mXcRwUnHPT2IUyTsHRD1BFPp1+kid6DWYX96blqN3xrtvwezu
	WFQKEfXZlg9cM27JjD8KGPK9qZgzSNkI6xTD9ef8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f132e701b-13e0fded-49e9-498d-bad3-f72336a49157-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 524ddf774d4f1b031fbccee334ae635e882e766650031838240949c1b25d0189
Date: Sat, 19 Feb 2022 18:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645294284
