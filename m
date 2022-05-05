Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F102CA4
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 20:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651784038;
	h=To:Subject:From:Message-Id:Date;
	bh=ELzl5wYyxl6K0Bcg/YaTQJuD41Dc+EdUgjiHWBc7YAE=;
	b=krn/UHxYFLIjIqasPxFshwWbm4dAVLba7XS1d7BEDM5NttDhoiSVaiQ7w8DfWGil
	rgNBsxBZhAAmGIeYq902pK1XxEFFKxEIOSp/Ho879yaENVYr4bRU5tUPXjGqI7qpwgd
	PF4mo6VcmjNhnqXn6Gz9OkQBcxyc2dgKFhYeHcps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651784038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ELzl5wYyxl6K0Bcg/YaTQJuD41Dc+EdUgjiHWBc7YAE=;
	b=hHNFHlsl073pfpiuyvX7AabBjXdCTtZM0jg6QesPvYgwgjhqB/nHqMslmeGp6elj
	kUf5+bMM4Jh2cZKBOxhpUCbHkT4zceV8mIY+BRJq2UAVGmUPrpA/qWZqe6AXg8+afO9
	H1w/wK95x0nN6u/MFpcgR0rawk+NPGgPevLJIC0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180960037a8-e11a00c5-149c-4ece-8775-c7bedc82f316-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8795ee3f319108e7144c163f3fb1b681ff6d5007fc799d675325e4c2bfb30c8
Date: Thu, 5 May 2022 20:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651784038
