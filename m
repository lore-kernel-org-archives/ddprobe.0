Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A31BC1FB7
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646620284;
	h=To:Subject:From:Message-Id:Date;
	bh=iHIppkGvr1cX/2nZx2IpFnnI6qWMzdw3xcDqYeVhNvg=;
	b=XpAQMzFHkeO+pJw/hJRoSQ6rcZTNQC3jqHQAuUm+WEGb8Va0Km8JksAao1KtO02C
	iAlAo1zv/zNiw6jWgyRbwz77Xpij/CeGMvWxITJZgwXlKTtXsE1i5gVAz/MRzSf35OR
	GoxOWRZTaEbn43wR8GJY6PQW8ozL/QhZp08aPG90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646620284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iHIppkGvr1cX/2nZx2IpFnnI6qWMzdw3xcDqYeVhNvg=;
	b=B7R3HM45bXHFFMQrsc78yXC1tS9PmfpdSOHUZb1iNTaQD6ABsaEFHANHN5UAKPnY
	1ghIQ+OP20SKwpCC5serpF3VQWYxyYqfH+zkKcL5Vse4f/h3FyRCXa55LsW6nv9gfL0
	7vP//48yuRd+aLxu6P4S1oERUHU0rCrYHNN050Q8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6237975d-613d8cd4-7bb5-424a-980d-e14f52bbef9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 084bbbecebe6f183332f1658f9f6096383f265eeeabe7f1e9d5d68df4d95a2f9
Date: Mon, 7 Mar 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646620284
