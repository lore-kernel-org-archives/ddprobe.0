Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE647F
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 23:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644622241;
	h=To:Subject:From:Message-Id:Date;
	bh=/3XJL3bTJ4fFv2ALTJFKyAn2k9c5ZLkoQ7VdpJhmhOw=;
	b=YOC3gS3+5aeoMnYUAgXqhpiPOtD3bjnqGIohI+vxwozSUXVZFVFU+RgmEtbDFUf5
	3Tql1kBwXUGq199FA1v9ioa8oqS2CLIYkB6JAzVDc4VoUG+lk73dhv9s4fL3L3DmZ3j
	xNwFfYs2QVle+56LOH5++8npwfxyHO2RXnfvRMv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644622241;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/3XJL3bTJ4fFv2ALTJFKyAn2k9c5ZLkoQ7VdpJhmhOw=;
	b=I2KZv4WNPP/+cB2AIuWSxVd0fg+uCPMNP43c8WMXZoE1PQmRd9WMeaabxetY9ssy
	EKcvA/z8O3Fzw1nRg9FvIIMGRlyhaSLG0K4OpNP2wGz4eGCeaf2Q/WaWyWeEsqpz+T/
	iUhZq1aQlcPLUGQYId/I8uV6Hcg/fGI6YJ8zVt8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeb1fdc8b-07388fb4-6c6c-44d2-8333-df3366b3e2c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f988747b4ac00f197dcbe67575561536ea27ab071824f9e7b1d44e4d67d8a498
Date: Fri, 11 Feb 2022 23:30:40 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644622240
