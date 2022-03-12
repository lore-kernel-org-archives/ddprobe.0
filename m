Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD72436A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 00:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647045385;
	h=To:Subject:From:Message-Id:Date;
	bh=dW4I6OF02WFw6cWYwtmKLxkYGJLeacy1xvk7PE97Rp0=;
	b=et4PQX1DmfgoIAdjwrAt4wH3P0XGMJ5UlqgH0eoRUQx6XlhPsdr/1GFPEzuupDKg
	aPnwVLEharFOTRiFDT8+h7z1O001hiUXeXGE1gM/hyuj/tTJBS/aQm3oLHcoeIOuSU7
	WOXbuMub57fWvHMixno+olQVgHRcEk23Z8dQ+/Dg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647045385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dW4I6OF02WFw6cWYwtmKLxkYGJLeacy1xvk7PE97Rp0=;
	b=BzsUlF6UvGVHHK+PJT+4xF8tnhb2pKYPBgdoNrjakmyBYfOc+m31WMId2YQaOMRh
	j02wBPcGptHN9oevFB7cpTTIxJe1WP9wGX9k+YUKZEiLimkx20RzKNDamrU6QZ7wcgW
	COHJEJ+hgb8XsHiQ0rlSUL2JqKP06fS3rMGTsYD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b8e1a84-e488c52c-1c22-4ec1-9c02-010b24f9f6f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37891f629e1f9cfce8f015750e62296c9c9dfb2f4486af5150b0708b6588a8f6
Date: Sat, 12 Mar 2022 00:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647045384
