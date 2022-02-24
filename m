Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D381B85
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645734385;
	h=To:Subject:From:Message-Id:Date;
	bh=zSaFo9Ddt5wck9QqjTywmETmQ8dJrDze7EJT+xvedY8=;
	b=ZosVQKctfcDSZPrZ95CtSjISsJ8tps7ij+nrpjwbz3z9ZH8f+B5fMw/K7YF1/C2+
	EZiJJqCce1aTF90l4zrvnkMWS5iXIQrP7flMM4OjjmdC/HerDn01IRuuBNKwEO5YqYi
	/SD92dYC0HgCWLFUJN/A6RTs+zm9M7RUCjNvkZso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645734385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zSaFo9Ddt5wck9QqjTywmETmQ8dJrDze7EJT+xvedY8=;
	b=G4dCuGNpECFOab4Ho41ontfeBjHdst5XHj0AGTArKCxe52WT1JYaF9VhiwvViaGc
	6mahr+iI4RPCGSNBR6xJdXV0r73oW83v5PW+qu6zPrPxuqqbSe6S7UnZVSxq4Gi9zC/
	+/qtbMQD6iJDyo0hMjY+FezoabpVV5GmqjI4hu0o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d69d535-7a366a74-30f7-45f7-a595-e174f2a75be4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07e5468df5c0370e9a39f5cb478765a0feecd92bdda9d52723379c449a4483bb
Date: Thu, 24 Feb 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645734384
