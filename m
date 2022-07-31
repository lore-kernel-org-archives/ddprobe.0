Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3E25C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659302452;
	h=To:Subject:From:Message-Id:Date;
	bh=NHaNWv038je+j+7/7kxRMCkTGhT2+qhx9bdXtffzmLk=;
	b=TMK0KKRcb/nof7vTF9Bc0Qi1Kwa8IqJPYvI4wnjYSFotkEn7XVqdfNX3FPM+sAn0
	AAxTrmLD2XJsS2GWYg+4eNSfsc+GRVOdYpgQ8Wrl/lf2oXUzgasYJAme5s6vYsJ1VTq
	s6X0k6NOUrknLyg9rgKsShlEBFKncaQKddlWrICA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659302452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NHaNWv038je+j+7/7kxRMCkTGhT2+qhx9bdXtffzmLk=;
	b=OYgZIaiWHjPIgGSjjFFjRSa3R+7Y24FcVlCvwz8E3gzoPnLSYqHp5DBF/X574972
	Lszxyx0rNsgd/dnjOgtkGb1YPpLU+GVAJtEgl0uBDX2bddi8AlWmXK3c+9Zfe3OMJDt
	YqDIx/malwoU0jQGFpQNaxZyExAWwdHzluXhLEGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018256221d7a-0ac6bd6a-1fbb-4a2b-be40-86a6dce30856-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2126520fe01d23c9f932963dafd30529d55479ce38d9d2c0a4c9fbb95dd30461
Date: Sun, 31 Jul 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659302452
