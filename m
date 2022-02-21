Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23CA29A3
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645453285;
	h=To:Subject:From:Message-Id:Date;
	bh=gsowM0Yx0bR+6hNUnfEcmDXrOfkVwax+XMSqJdHl9wk=;
	b=HQ1snbTVn3lYiyiKJpWrqAX7dCG9KzXgWs7WdgkI21CSQuFghveIdTDy+n89JwzK
	fuGEcP/QxDtIRrfPMz/oSnOb0idk2XhKNnxMeUjHtzgF/weePBEGLeXf+rKbNl0DFS6
	Qf29jJzl5aRZgAXQ0c1mR41v+umaYo9lTJEhwjOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645453285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gsowM0Yx0bR+6hNUnfEcmDXrOfkVwax+XMSqJdHl9wk=;
	b=fLBdvGrP0rRthT5NMxOXtXiqYAoZfOycPxZtZ1I7/WfGv98EYoERQssFUVUedrYE
	U9dqOGC0V6oZXNJGLUqrJR/zn3sgYOjMRHtzBSFIRqC6znnXUTvtFO1jZYrM8LaX9my
	KdGS4zRx5GD/PrCQcx0AeAXFhXuXrWmweEVHCPXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ca895c4-dd954662-4b52-4dc5-b83e-6b124f63d47b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6e71da341ebff4766606760aabe976fc227f61b512b512198bd9bb63c623ec6
Date: Mon, 21 Feb 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645453284
