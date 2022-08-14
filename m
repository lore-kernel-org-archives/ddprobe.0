Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB5A257C
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660502452;
	h=To:Subject:From:Message-Id:Date;
	bh=J3NuQ/kOnGNYUBAs0vVhMCQUGmZLWLYzEWZD1ZXcvno=;
	b=TSsn5ducwlziElxJmTAMb5mIByqxQCNHu9hgB4tA1R4ZHcfzEc33gG55vfD1oq+C
	yDKQODEL5lSP6H8HQaj/DraRT3HApIjMx4Kl45yDuah7ZXI1/M/i7WM4W3MFk7imcqf
	lTJeF+ovEJHLjrdTYI7R7nW324mUWLdcn5wGTtbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660502452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J3NuQ/kOnGNYUBAs0vVhMCQUGmZLWLYzEWZD1ZXcvno=;
	b=IzeSaMtyjm0HiWv1Vzqf8jbk1UmmXXawO0TgKkrBk/UzLNSGCVwOTqGZJSk0VLGw
	9oJlo57+xQPkCT7fcSPAMtBFn9TwjOwWIpTO4pSzQx1Pa6CKx5unrhuadBMlViEnBOO
	BqGAXz6CkQIPeI/U6rLYa2Lr3sE7ckOtLPoVajpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829da8a9d3-9bbacf16-1ba8-4ad8-8539-87213de4df3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea44b8cc18f145322354491802ccdd9ffa812ecf9552b1443f425c9523dba8b9
Date: Sun, 14 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660502452
