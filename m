Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A717B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 09:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654680779;
	h=To:Subject:From:Message-Id:Date;
	bh=ZhCHvemuREIHKMidsNyahJh8Pr1Hll+H5yWHJViMTqw=;
	b=B6SJj2VpO+THvAIskkl3RQWhZ/ixrjgMSMAiI7KcGIl2xXZq4QM56tAzAffrYxnW
	mrALQupcPIX+QiEnxAhd0DXQSHaMrJpsomWSiHQTw7PyC+MgDq09smtTmzZLvPoZOLZ
	AGuRPaQbapPB3M0TCgaXzjO+h7awUa54yDzli6Tc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654680779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZhCHvemuREIHKMidsNyahJh8Pr1Hll+H5yWHJViMTqw=;
	b=hTR485+J+dWOCoka2zDgag6YAdMeHiMFeGzpwjCnNQ3pDNyJSbbAnXvorr40F80A
	1BHuLUhXgAT5k40LRdSZ7J6WDF7oxKLu0Hen/IctB3N43ij5dqokDyOAeXLG7DhQgot
	eSb81uIjtFql2VbILRXM2aXPlkJ+Yd7h34xUfHFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018142a8f9cf-507aeca9-d794-4fb6-b3a3-ac2efdf7b2e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae213296c9237832bf7b3878209b367ea18096eadf94d2576b34f515c6ef5f42
Date: Wed, 8 Jun 2022 09:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654680779
