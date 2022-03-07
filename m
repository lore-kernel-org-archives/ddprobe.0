Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D085C7482
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646696785;
	h=To:Subject:From:Message-Id:Date;
	bh=8f1PB546+3EWWdJ70HO/le0CkL5ctfdII1s7c/OqGxY=;
	b=Mx4/i4p8UMnAzrLsx5HOjJYUi36bE+bfZRAb9WjoetbvLtKgWoyDb2XB1Mkip8x4
	GsZJE1KylAebOse0qNLDJHEtHNnIZ/ORIiM4pq+ZEwJR1Jx7vqNMei1a+mJyGnMUA0l
	nLjjstTWX0iUxYqzBeYXKJwgfKxSpVLeaxo8O1sk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646696785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8f1PB546+3EWWdJ70HO/le0CkL5ctfdII1s7c/OqGxY=;
	b=iOVfWdyRbyPmxxtDcWzAQkh/aYMxtvavXkJy2zs8uRH9T8rQk1EXyhQFVSFu9G3t
	KG2J8p8YpuaS+udtFP+OLrNEN8whgDbWarPye92mYmo0S9UHxgUK7vKu+v9qDD7KAI6
	Xy7AycrcjMxpi4O3vIBQ2g8n2tfZSbgwFww5nz+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66c6e38f-55a66701-42af-433a-b25d-dd6d330718e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd5bca87dfe0096ff154475ddf4b98cc8851149900f436988145af66e4c8edf0
Date: Mon, 7 Mar 2022 23:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646696784
