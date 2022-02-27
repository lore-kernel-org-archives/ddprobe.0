Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5B02F27
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645974985;
	h=To:Subject:From:Message-Id:Date;
	bh=ZKLnlXEbIQWYvXtI72SXmt8mFHtoyqMKWvawxXJRc1M=;
	b=aeZg+hfwJZzWBu14lfVXD9LbZDSd9YQ7VsZN8rv57eNRTc/8BdbjFRywxcmpSAH6
	JV5/oz+W95PeawBJ9nYp529wSvUgwunvkHgMTcJUEQtdZW29xEjDYbL9x++sXrZJiPk
	YyqzFAh/DoD/IaxPj4jn7dvnsbIVVc26Bgc8eoH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645974985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZKLnlXEbIQWYvXtI72SXmt8mFHtoyqMKWvawxXJRc1M=;
	b=MhQW8cwkhDJmfnu8IhgyO2YbCie8Lj55xAdv/MjohYghyucK/2dfT5HNNTlyhNmf
	JG6+aXoIro+V8LrnH60OPAxzaxEgIMVUQJwMGtQAuMhvrmGp9WGWxFgllo2W6UFO17v
	hhxKSK0GwOcMaOcZooyGqDGSM3ywncziayqKgLl0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3bc1182a-87d6b9a6-3bd0-43c6-8dc2-482a5035c06c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 436887656bbd6ade81d6dd3af12ebd52ebcccb34bfdff4dbbb18445dc3bec27f
Date: Sun, 27 Feb 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645974984
