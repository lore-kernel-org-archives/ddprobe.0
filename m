Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7C25387
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646865984;
	h=To:Subject:From:Message-Id:Date;
	bh=m9iC8jAGSaCAiQqfDYBWaabhhujG1VnKs8Oosefw9h8=;
	b=QFt252SdQN0bHrp1eQYg0UrKGFYZcangi5IK2X4I8RWh4PYP5q5VOolzhSMy6KQP
	wliGda0CbNToyZppdIDzp6NTk4hr5SXtPLp2uzsOybhnK8x+Jy4Cf5H7p+yOOm97gqo
	14w3MN2FYoZ6i2oxtmhofXkWBNFtbdRsJILv8Kw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646865984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m9iC8jAGSaCAiQqfDYBWaabhhujG1VnKs8Oosefw9h8=;
	b=egWBhRfm3Vjj4Ebfuxr+m3s9PjE3kfEw0X+ebiA5X27imYXvXD04eQ1N8GvxRXNP
	PRv+THGNa7GnozwGLWjJNcyc6AI2eK+FBbUWWStXV9cZN8PZIMCutjtkYwINMJYotn+
	i1BqGSL1IcJmylU4JJg+s+jZ4RHFhml6UEN755iY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70dcad10-299a880a-137a-4f95-a66a-25abf1e5e823-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4133ddb89f5727959d8d010ebdfc3e03d9842deb77a699183a5de3ed19f38bc9
Date: Wed, 9 Mar 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646865984
