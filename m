Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E93321D
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645161085;
	h=To:Subject:From:Message-Id:Date;
	bh=vlLwfUVQ3TycfgtiBujtBN2d1/AQ1QNmbZ+V1QtRZ98=;
	b=TCvOePbFshuZIr8GZGyLHqzNpPSDAUnOkSRnQh9SiVjBa9tbO6sj3o8PFyc4F9H3
	YGZMLuT0e0HJzA/6kkwpOCKQG4FnTqEj4JkCSncGd2R4fuery0PxXvILYid2lJ5dLHV
	4tYiNhRGtR2WgA4NF9OWD5ygpGjoatg8n/+JrAhA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645161085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vlLwfUVQ3TycfgtiBujtBN2d1/AQ1QNmbZ+V1QtRZ98=;
	b=Rc7QRPPGyKyJRZDvENrpQXv1XFImiVTKRj69zAX/6rEsl+8XDHu5/ah3+fyvb47R
	06rVwLWOAKOluCMomr8vw9XJgVSz85Go8pL864JCSoBbZlflSeZeLEnwMr6/r26oR1n
	rA3/bXU90pve9tQyOqQpbLTzSPBsffZppiqmVsHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b3df7af-9d38bbc8-29bc-4749-b8a1-14b4cf7ad981-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c9e1f52d4cb5f80eec81904429075f62cdeaa8b7f73176216fdc1862c66deb3
Date: Fri, 18 Feb 2022 05:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645161084
