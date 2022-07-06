Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3851258B
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657130212;
	h=To:Subject:From:Message-Id:Date;
	bh=+DWe7icKy5I6IZLsbli2PYiGBcxeBG8cyVRQXkCUaSg=;
	b=UW+9qygiG0moESuhFyuhS4mZ10TOJh0Hp9FxB6VnbxGm51YiQv03b/TSiMZR3/nb
	8bMqdyPt7e8cImFbmpN1PT/yPs3zRWEdb0JSciBdxIwAExh55rBpSEvSkixh3uabMKz
	tcysZ3F7O5W4TJqC9e3l20ZzZ1+9ncRGnyrFjdOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657130212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+DWe7icKy5I6IZLsbli2PYiGBcxeBG8cyVRQXkCUaSg=;
	b=W4u/9546bpEBOLe63awBOQJJ+KaaCy1y3xwvzEZbm6Ke4gaCyVNr7/lPO8CnRIB0
	aJOgKB+pzxUsU5Hprrx8bpge4v9dSNKZFRefaqHU+ki2Wg3GNgughdVE2G+wgbRrtF4
	yMY8uuobTagZDhfFinOgIAR04Y/Js+wRFyI9u0w8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d4a85bc5-6a934785-5b68-4f87-a040-ea8605e114be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7752696eef7bf4836a7863007d67e18c18974d860a394fe080f73d7b0f93b8d3
Date: Wed, 6 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657130212
