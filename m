Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D2E7F6
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659601252;
	h=To:Subject:From:Message-Id:Date;
	bh=WTt2zhBz5uBxlwF+4AKfQIRUU5uT9yYM2WSd1biyt40=;
	b=ffcjlDNWSrJJoqQMkA7wU4yIgmy12G4AAId//6iS/4GwaFg+FDI9e9E1XsJx0g79
	YfCbNI53CIDELnJbwhihtgvDyYHTgewIj1/uAexpjOHn0sGcO6UaNXhSqStB0FP8PBU
	JEnvaHda2ZOP7f9cmXbdI6DbIxqaTtSqaB0C27jQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659601252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WTt2zhBz5uBxlwF+4AKfQIRUU5uT9yYM2WSd1biyt40=;
	b=R3ex/YpaphOEHuBnKC+cqERAOQHOJEUvFWy+rvax9SJ7nPMnTzkFlk3hEmyX0TP1
	DxzF0aam5VJuPCFhsMQ4zm8tEZkKNCjjB1oRTWsUpjCgMPzCVP8XZ9CCw2qysCWZIRk
	4kgVOKc3d+cNOfcVVCjjUrngZrgYqac5CAhksg0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018267f170e5-e73282d8-7046-4bf0-a955-0988b338aa4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6609b871d84292341a30956aff423d5798cd5909a0f8e582494f1092f69d571b
Date: Thu, 4 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659601252
