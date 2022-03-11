Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B6F42102
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647017184;
	h=To:Subject:From:Message-Id:Date;
	bh=z+1XCxtImZ2/pRlrY4VD2+uFw1pzX3XOOliJVlXDBQ4=;
	b=WGxcfkyTdx50krBJi+K5cBDhjIt0WWvFVrq0TdD+zIiGacrZmacQCIpocbTvukGQ
	CYTfPfGRbk5cdnxW9SGEPO2A3QkZCOI6P+BXj8gG4viQ1mpqa4cr/bhl81OySXuHGhK
	3/6qT4ZUvn0UhwM4GQbsXhMDryZwEV23OefjGiHU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647017184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z+1XCxtImZ2/pRlrY4VD2+uFw1pzX3XOOliJVlXDBQ4=;
	b=TQNqSOpdWylIxHk2dJJB2VwDc3LntRNsgxVx9vZ/u6nXdT1tU5sXKKNCl45PqCvM
	H9cXAGwm0NsLyXr/OgZPPpRIijFmBctbNf+UCuvASnNKL1lxienffVhTWubBZGIZ4ca
	egTx4VhIojYUtN84SKH36HrXOBRCGeJmmony7LcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79dfcdad-37d2b791-dde0-47a6-8a1c-5c1b6cedb314-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80c861087db8c8c025fc78bb410733711842fdde32f42d3996bc164c8294736a
Date: Fri, 11 Mar 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647017184
