Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9297622
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647916885;
	h=To:Subject:From:Message-Id:Date;
	bh=Fm4UyMdZo1hOyZP+v+2Exyf1WRqpf+mXrfZYbWdAsSo=;
	b=DOw9EJNMigtET7qGC3W9yTbWgvJPGiCkO934V5K6xOfLVjSv8DWACopVTJtsJIVp
	YkVkMcSD3ffs9QDnRc6/wTD+Z2CLSDBqA5K9dDol/xNXxiKqmGSIx4D/NAbeVnbJeIC
	e1JOyqRgb/TKeaOCTLkwEgkARoWnCDqRvB+m/DEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647916885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fm4UyMdZo1hOyZP+v+2Exyf1WRqpf+mXrfZYbWdAsSo=;
	b=KkJYNwmybXbW/eICRVqmzEM/2JhjDZhGxf/uWL0YI3pdODtRCUw3CgXvPXS5sQP+
	+GKoZEse1sJgulYU7tVKnK8t07kaaV+JoN0VkWyIWTzf+M68eOmhPFcyA7hVu0M9mVr
	oGqhsPnfNcGbscD1EBDywNbNSueK4dJksmb9/G5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf8022fd-bf6b5fbc-0a28-47ec-a6c5-e19979ca8620-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a86b2bb787927904f1eb842ded1c2deaacd2804ff5075bc7d0a86d38d325d2de
Date: Tue, 22 Mar 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647916884
