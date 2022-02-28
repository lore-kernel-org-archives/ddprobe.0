Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1F6D7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646092584;
	h=To:Subject:From:Message-Id:Date;
	bh=qaRNUqOrrO9WMTVyynhRhqmE60QP7HKMwVauXJPeaus=;
	b=HUPkwaHWt0WWiZSXVsZ9n0zE0j3KtqfE3dyZ/HuXCmEWdyHhG85itoGrfuo6aXsp
	oCsORTDfU2uV0h5ZhsNHNIAAOXyp7IuxQ7oRSfWevG2wMBxYL9ojRIsiKoIJdDAXS6y
	ov/bAZ2OMumvVygwC4PimQgrGdEzZfcq/3IPsbWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646092584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qaRNUqOrrO9WMTVyynhRhqmE60QP7HKMwVauXJPeaus=;
	b=jhv5ik2+Gt2RzX9U0WMXAt/Bxl3sTTG+Fcy8n6YzkzYYf6IAprKxbBVMUuWzua7R
	Wn+wgGzya57uP9i8rcxQkEjkxnNfwG8Z6wXosqI7/ONjhMIkA5tYI19FNOU6Cq+9p6k
	Wm/ZQtDva7+FEYCgdJ+sNJan97hsgD69RCTzW2l8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42c38748-3da5d372-73d7-4c4a-941f-c9358d65a5cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bffc6f93b24b92720525d7b0f83420eac10313123ece86f23fc937e0d1feccea
Date: Mon, 28 Feb 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646092584
