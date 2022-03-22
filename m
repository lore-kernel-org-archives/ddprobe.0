Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F8CF621
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647923785;
	h=To:Subject:From:Message-Id:Date;
	bh=PFf1UneRK4Thq98YzNe1WZcSi0wayxXcf4XcJpMhw18=;
	b=jriIwaIXb1duwBxRHe2fTzFxN5cgbwk4Qw7SrkHqYJdvTf4hR+QrQlpSetfHj8z9
	FOEzUs1n3SwuqMRsAiZoyRcJrBzZnSr8fgbPj5/9cgKOm0spGHJT5ts2MreFu3QsY/K
	Tonn7BFAYi6fEdB1ca77rC3gGQ6kQlFS90YzD+uI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647923785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PFf1UneRK4Thq98YzNe1WZcSi0wayxXcf4XcJpMhw18=;
	b=ZdVGSOI4yJroY38SLGmXcHprVBh1HHqc4K6tO597wyCzHhIngpZcS/VSODWpHFgU
	ymgckic+lq4TsqcjF5zoGjg7779IM4eychmZ62JTmhADvVSeqE3Wv9keADzdgogUt7e
	q5T4vyoFcs8oXJnrCI7X6YwIYcrJYJ41zaN89H28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fafe96c6b-bff61695-ee7d-4a9a-a275-d9647aee3c0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e257d6a1169c8ccdbb516052b63f71a8e1ee013c28078beb4976e6706e9a3b91
Date: Tue, 22 Mar 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647923784
