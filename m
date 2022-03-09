Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1267A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646804185;
	h=To:Subject:From:Message-Id:Date;
	bh=6Qe4KpIT2zyx9cqBXsZjE/NZb1ZFWKSIts8Ofq3lbOg=;
	b=R4hgHWU0cxXobLnBcuLK0S5mBNpDfVyH8xZLq1mIUgFjH3/dXIpiuOUZB6j3a/g9
	c47uuaa5IQgZow+WKVxT0IUQabgW23HnVI1hqJdpT09qbQcnxiDEu8gNZDybRwOMLvc
	CWwzXn+7SMBD9T1rUIxmjy+a5mNxNptxwNavr58A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646804185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Qe4KpIT2zyx9cqBXsZjE/NZb1ZFWKSIts8Ofq3lbOg=;
	b=e9Ueu4CxXVizU0HMP+R6DSMc7OR4ar8VGHFxCmnb7jlyXYsaG7JZxpANqicAwSEW
	pjWy3ugGCTWyJNVDOUjjpKUtaER4Z3PPS0l5Z/0rQsxftBLgAasz4vAHN7rf+U/6pB7
	amqhQ777JBW+ckYOawTbQ/1dIUUJ3ZBFNiwzh6bk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d2daec1-229aa28a-1e5b-450a-a698-1daa0038141d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30553ebc02a486cf48901cedad8e00e71bf26a91e61c893bc26369f1633e0c0c
Date: Wed, 9 Mar 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646804184
