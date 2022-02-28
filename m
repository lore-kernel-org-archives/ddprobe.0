Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A79815C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646075784;
	h=To:Subject:From:Message-Id:Date;
	bh=jdeeO5N10uN1wOtKGOG6Od0Febz9e3eVy+s0CDf+A1E=;
	b=MEZ/xA9hR46Gk0I38kfhoYDbDALwXhbbiQHuasyy7wHYdx9JcSDVQKFdBN8+voga
	vOfZ5gsvcHgVM8ug/VeHdvrEeEyaaDX7kx/uA3YH5cU5QReu2VGOQbqntmDm4gGgKur
	QBjeg4AZYSIV0Ea5ob6vrTZC/bZH3N9VCyNtNlnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646075784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jdeeO5N10uN1wOtKGOG6Od0Febz9e3eVy+s0CDf+A1E=;
	b=SAp5egFxH5wLYKlw1CsTFe2sTPCaCm9cZ75Sn0bD4eWdSRpML9z2iQ8MtR5Nkh/i
	4YONmmICVp1MkkN/4zqGQwG+hn5PZnH+mqPQFc9ZRhdySy/zpzaUH3wRVb1Rztg0EfE
	wNfK93kZbsIxTsfzXuk9lJk3zHhnqNNtc94Gvy74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41c32e3d-b1d365ce-2fc3-4627-b32a-3f77033f1edb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d411d18f8543f91630a02fbc86af2e1b9b1977e6f8ae8d1dc78733e3db8040c5
Date: Mon, 28 Feb 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646075784
