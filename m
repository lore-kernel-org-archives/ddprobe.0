Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD6E7B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645368385;
	h=To:Subject:From:Message-Id:Date;
	bh=7dDZWopEIi+tWjpekwzpntri49QoAOlu6RNJHymGL5Y=;
	b=CHYKgPXtRR9RHClG+5KZnf0Dz516LpEaafaBnN2p8MXW6gRLP17K5smyXHVoVoks
	mzJo2wXcF3eT19J/naluOMNAqRWp8RXePoaGJR8mnVW4FmLx/GiHHbc1V8LsqFdEMBF
	1/YYn6ExNnCgvvw5azXyoaQ+hir6sfcqO5mBsVCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645368385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7dDZWopEIi+tWjpekwzpntri49QoAOlu6RNJHymGL5Y=;
	b=ZvEvY5mwYT4Lch1uWYdKNh7QP84oAdk/q7kiBt9xrN9QsorAIjXGG4RHnQI5E5Cb
	85p+uVZOaJaY1W+Jv0rFbXfmL/fIT9IMJ929nVpyax1UDZ0+vFSdAjhKNy70cZReeyK
	jmRAfOHr0lzjg7nOH5T56AnGhiIk7Eb6/O+eizdA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17991d69-23111f22-917c-46c1-8741-9224b9f1747d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a19d78efc6029267be50289a1d83fdb573db17e4fc2faa8b18864ac541e1918
Date: Sun, 20 Feb 2022 14:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645368384
