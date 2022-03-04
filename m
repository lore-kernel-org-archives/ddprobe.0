Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822DCC7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646406684;
	h=To:Subject:From:Message-Id:Date;
	bh=oGcma0DugZMZxUChGqjDhfuUO8voEQbAeHeO6HMYgK4=;
	b=c5Y74dmd2f3LAv0CKXKh3RhYEYu8PsqfBi31hqD72EoxmoKWP+PTk3E/Ka41qlKZ
	VXQo4Wrsyu0braMozDyPRvi9m2q9CA5Hm7CSC2ukN3WnqAOFeFGjQHNgpN5zbgUdanV
	Oz+XAIuUyU+87yDxnOz7q+9getn4UxFxlqhW48xY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646406684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oGcma0DugZMZxUChGqjDhfuUO8voEQbAeHeO6HMYgK4=;
	b=eEqc0a8IEkjorJ8zn4f4zJRTNSCmMqDJlnFedBcA/jA+PaK/AIzvaIzHsJWdNHST
	eJPMMCm+DPfmt38YVLzTsxQsNUoxCxmjdqeQFcSojhl4k3if1otQbgKuYOpRsBDbI4M
	zcDO/+as2zy2HUcWnp+QPyU02XCeiHYxjEjij2es=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f557c5046-5364ecbf-b9ca-480d-a61b-0451283f96d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 306bb3be8217fb8c56b5cc1a0f146a636b6f0609e484da1da90a2fbb9d75010c
Date: Fri, 4 Mar 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646406684
