Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917B3365
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660282253;
	h=To:Subject:From:Message-Id:Date;
	bh=IqM2YfqjwvdRiBgtGs/xnqhTA6ZQK+mVJGJN+AX4H/w=;
	b=IngzOU16Mr7VxHQO/UbI5UyaWeqn+6jl22xDx2sZeUE6iyzZONOGo70C190w7t3q
	Am4VXWBHLJf/ENSv4HYmzYZ2N9gYluXIuJpIb4A9buSlsOgVgKnRvBw3Pa9k80KR38/
	OJ2Y+0Gpbx/GgAd+i3kTodt9meQpu5ZV1CZWdaG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660282253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IqM2YfqjwvdRiBgtGs/xnqhTA6ZQK+mVJGJN+AX4H/w=;
	b=hkTL8cP5Q2HwxkzYpLLpYqAit6KWbxqAQkBDfitVduCJ2VBqSSpixnFfd9ajjsl4
	NEiKXAlFDrmEqvRXhik82+lLqA65mnwLWyPuM7L3E8KXYINfty3WDbWjTnq5oZcmMcG
	oPFPgXdWbW6r/wutGfzLMWqdK/wfAnnDIVHaonyk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829088ad11-2bc36c7a-a5db-4258-aa6e-6a55bb7b71b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3b86925b3612bb5042d838c7e1a3332dd8982756ea98e17b70610ac87fc9c54
Date: Fri, 12 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660282252
