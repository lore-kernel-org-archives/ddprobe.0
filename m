Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5577E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646985084;
	h=To:Subject:From:Message-Id:Date;
	bh=I/AbzxOWPIh/K+zNnOSoc64PP9VBshbHg+qhpFE7Fz0=;
	b=aJ5jK+MLyVWWC//yeRXiHe9k5cw8ZGZsLJnDinM/nCcapYAlTrrmBitVO44zcpt1
	4kmzo5Y0ZpmiRXXqkx2tmjjtBKzc0avxy2uqav8TpH9MYT1QWHovt4PlY7g3ditf6j2
	vRhKvYQ9ZlyxWPhUZKFq2SH4DfpPqd62ezcpqY+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646985084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I/AbzxOWPIh/K+zNnOSoc64PP9VBshbHg+qhpFE7Fz0=;
	b=B3HmzTuI/Ex61V33Tre5mLfSo1j5sDau50QPeNY9OsHK1ZXdPRtN01u3EJigdIYh
	l2LRqdUBbK15nOX0ieh0nHyQZ8gRNXdociJVw/80UU6bcM0Yqk5TJ9dwpr/tSK2aZNG
	lHrhZhAzschTrzT+JGKvnjvXRGTu6dGemTo1RnTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77f5ff36-f592036e-b027-465c-b217-97acd29292ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf3fc47076ebe88273b730c299ff2e4b8d7029a7fb7cc1079e545ead6ba275e7
Date: Fri, 11 Mar 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646985084
