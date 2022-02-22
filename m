Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E0C692F
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645563985;
	h=To:Subject:From:Message-Id:Date;
	bh=mkP75ZylZhPjHe2fFbB+TZ4jVNhz7j4Gjj2PL3GrxYI=;
	b=MrQ+FnT6PvA5WdE9/2gkxu9j8SuZPwvghbguMnBZDuYywaU5n60nJwLuiFe0Li1Z
	MjZ+hPoanPBLrdKeQs3Ck6rhHc2iHdSqgX9BmBmdApa0c20hvdVNX5jrozHVFlBSFwP
	8YlGHVYgPHJJSNtzVeFcnt2caKOPZQ6k5cbZ0nds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645563985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mkP75ZylZhPjHe2fFbB+TZ4jVNhz7j4Gjj2PL3GrxYI=;
	b=RKT3CYr5B7mAylUH85/0BdgRD4lS7lVjFA7dzESe62EClCmS21LLTFuwJePih0k1
	3ogzRTuKLI3DhEAY2pbsSmDS/Ee1BMhvJiydDLTcVGmVEPOLqYX7YPqfaE18WMrmA0l
	GaAkPc9WuuUYqEFLIn8Cjyz0FSiqB7iWsFPQ8WgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2341bc0a-a469cf62-f5ca-470f-8b20-cf4a405d6370-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29d51e80b2cbc3be1cf52efba94e8465acc76020218ee823da6a4655edc46076
Date: Tue, 22 Feb 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645563984
