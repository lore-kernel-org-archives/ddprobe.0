Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98961376
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644919285;
	h=To:Subject:From:Message-Id:Date;
	bh=dtJpMCGXhstWR3Bzy4jq05gvkJrjBSIeJQsPqxb+C4E=;
	b=HRzLUXbSBv/0ryQARJmu2yQBkoFcM8UBRVmVSNOSPPs4tEW0mGQG8Sb2QxNgtGmp
	pvlka5B6BuvnmXqaYOj2UDEpA1Wz7GII7pI/2cesDqEZwifLHyWq+bZhfMRnDVd6hRK
	yWYUhj8yja6ASzUAjvUcka6cGpv3Q1hlx3N274D0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644919285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtJpMCGXhstWR3Bzy4jq05gvkJrjBSIeJQsPqxb+C4E=;
	b=ggf2jNjtrwK3yCzlXSaJEceqHytH7DEYde0z1TSVb8yIIwFB9ciIQ5vGwrZZkWVn
	RfWb54AGfcKH1oY609unC3FOqgGKVf7RLbN3ZDhlSo79bGKu7CfAqzhhNyNL6VMemKL
	5pbPfY5VTcKqOA7imI/xSvGV6g6yrZQo7asFRMlk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efcd46428-1ac8151d-30f1-4195-a5e2-c1544b198e09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5ef4fd543b98f01a9c030b87cbf6037268c12596f765daf4211cc31c96a861e
Date: Tue, 15 Feb 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644919284
