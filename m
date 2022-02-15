Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F241365
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644910585;
	h=To:Subject:From:Message-Id:Date;
	bh=cFXELrqV71J1QeqUba5yaREj2UVOAk51+5ro4BRSlyM=;
	b=XF9NhNaq/uOOecs8OV6QoNA8v4oUqsIGZkSD/CT6pLNvD644cOknsHoOrE5BxruP
	HY309C0fyNzVFXqP2sTE0DJAac1MrwA2cgN0Vm4mPFUqIjA4cdJYtIu9Zmp/yoNumVB
	SJOgfp92HV7JbUWdGA4pqmMUk2qJFilz9Z9e56DI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644910585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cFXELrqV71J1QeqUba5yaREj2UVOAk51+5ro4BRSlyM=;
	b=BQR7Svo7k/TuZwFQ5MK5n1YyxkIvNfzXIs6ieN3sdElnlB2y+RG6FFSkYvMlM5v8
	XaZumjnCv/gS5zHxW7rHkRe0jeJFBkvb4Ps0/0hJbPLKnPvjS8PvPNekX0yKzONeS1o
	ITMhqQFTskzM/xNht3WAEEILz6DhFnBeyPeYPUwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc4fa40f-70a04ff6-3a25-45e2-b557-efa8afc0f338-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bc070cd7095f95e9f99dbd1b87ce278d4c0c97d05f7ea06e1e61c49c7cfc5f1
Date: Tue, 15 Feb 2022 07:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644910584
