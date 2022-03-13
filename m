Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C4D7E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647192384;
	h=To:Subject:From:Message-Id:Date;
	bh=OBbUCdSP4x3zfACLhZ22QJrfCzCiG6cL8n/cfjAQsn0=;
	b=DvjbxnhKEaGpu5fHp0yOfzyjBbwP7XCbIRjkzhtgi7P2pMwoeYm+VjPORW4vyjLz
	L262bV3HAdTmuP9tBJmRLcS9d25c6NjmHkz4VOFzGp4mlXlxhec4bHQ1/nfCZYpBeh5
	7V6IMp4yCERcBs+0+BLJfoTb49D2MHJU4rT7q7wY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647192384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OBbUCdSP4x3zfACLhZ22QJrfCzCiG6cL8n/cfjAQsn0=;
	b=hwmNqXM3sNax9aXZ6P6Bps9Cs/lIJrZ/5BgGdE4AUwtL6JBAPlwNnMqKBnagWvy0
	CfBi+ksJuYceJTW8XWa2vmfRl4zXz4Yz1L76KBpqIq/MohTRQkhPbd2JH7nC0dM/e7y
	Mq6ITcrgGGhrsWuEfRRNuPI6HzctMKefYEp6W8PU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f845124e5-005cdf21-b486-48f5-b9cb-d75539c9cbef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 677a26e10164583800fae28b80aa830c627cbb1f07c7fecfa6d34f3ebb5a72fa
Date: Sun, 13 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647192384
