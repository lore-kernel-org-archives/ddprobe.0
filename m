Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE28C1385
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 20:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650399058;
	h=To:Subject:From:Message-Id:Date;
	bh=w67oLkN76+ScTVXAnuWBtJr+s9mXyNof73Up+qglkAQ=;
	b=Z830fESBeJyChplnPO8ySoryzdHcQ7cl2D+fSPRNSw0WrCEB4cvRcqZxmt+0LxaN
	U+9gzTkjNLR9MZFbFhl/9Ldyd10qBHOawgE0Eet7Wi/dJhRDfOoSejJkxQtdVA7geZH
	HTg+NEMXWIRLWpzF47nxmvF96qR26tZgVKscVx7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650399058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w67oLkN76+ScTVXAnuWBtJr+s9mXyNof73Up+qglkAQ=;
	b=iN5HG0i1XuOLp+gdUXZ0MY1GP7N5FG02DMV2mvK3REo2QGCbgudPHH09FbSDyFUy
	o5t7HKdZ7C0AqfeVrsWzwMKMCX+tZCJKV+aS/Abow+FMpqBuwOmMqGAkTz6ZYyadbb7
	T9B7ds1rnU+QbcWHLs9I3thJcwRZzmlONo5PrnJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018043731987-d8425e59-bb95-41ea-acba-3ca5f494e3d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14c2b9214060610fba8df3572141782ed541e5eb456f626d88ba4451c7e8b0fd
Date: Tue, 19 Apr 2022 20:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650399058
