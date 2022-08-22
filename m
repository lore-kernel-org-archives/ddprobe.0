Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7837F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661152252;
	h=To:Subject:From:Message-Id:Date;
	bh=UyODjdrx15HJrCJdlA7pbRL+RiQ4nMx38B2CH9jWXpg=;
	b=Dk/tG+vImmbvwedJ56sEKfiw2AJp5q373bNJWKPlWGdgqw7eih56QP8PpF/CfSBi
	+lNRwbyVIYUGICM55tTYeiQ6rxM96kVgZ0S3t00ia7SaGVqtbdggj50fidgllnz1Omf
	9RKqRiQpOnyyDu2KVu9RRhqiW7+0e5kKeoDbbeIw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661152252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UyODjdrx15HJrCJdlA7pbRL+RiQ4nMx38B2CH9jWXpg=;
	b=XY24DshQeFMSCshdRcZJaRMBcKQKuTwOSF5iVnq+ERWE3lt0vv2SvcOA4wEHpzwz
	g676I7ghW2HwmhLcnFI++XrsEY9JLdQC7zndpam5l/UQyJbEzc6U1qiIwE748gzctJZ
	DLqi6px1IOSLm3h20PyZswJjrEadByLbiGUFiol0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c463d2c5-d5c6ced5-5e8d-4676-aea5-5cbf6c605a45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 572f5e0cba41a6a84970e50a726f7e6082aae8aebab87435ba45f7d66dff75ba
Date: Mon, 22 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661152252
