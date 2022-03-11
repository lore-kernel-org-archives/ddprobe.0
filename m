Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72052102
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647019285;
	h=To:Subject:From:Message-Id:Date;
	bh=Hh5/qNU/do9A6RlCieQNwY+TruxfyOUslOR2BaLQR0I=;
	b=Oa/Icy6dr+MhSGC0U4lQht9cbAVz07ID5FBVIFRiTMdvMBK3KjaU2CgGBUg3xrq/
	7LjuME2vxxqIkZy/Z7Kh1L0naT4wn/qJSEpa+WFlhusD3r4RSKpWtKX+Ho0SQC8Amq9
	5jESxOosShCY47M6V3H6s17zU+/Es2vCKIHNcdnA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647019285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hh5/qNU/do9A6RlCieQNwY+TruxfyOUslOR2BaLQR0I=;
	b=ZchRKqJr8pS2y1sfYfWd9C5preJ0waCht0B5ZYDA7Ys36k6HQpUoRSN8lCChwu5Y
	+z+Ro/DGnDh6WJOhtVMJkz7pSzwAJAylssc8g3VGgOEcj78q/4c5f1M5ZurgKjaq22X
	EbxmqWO7ppoE/zJMBmtj0wFq59WDCEUrTXuI+gkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79ffd9cb-3daf943b-5843-462c-b26d-213bd8fb9776-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a518cf37d3d8da0af68367f8f6915c3c9c02a43a5f4007005113de0a211f57d8
Date: Fri, 11 Mar 2022 17:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647019284
