Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3137C7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 15:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651071958;
	h=To:Subject:From:Message-Id:Date;
	bh=JoPXF56Dy1q6R7dIxXLYcZ1/dNR+k7jjenxDTDmGhzo=;
	b=g2lPByAakRWG2La5i4y+Xo0AsmRMBwmOi/d8RLOtp1QQx5dEpJVNXIC+WfK0WDFr
	q/NAnKfEbjlQmLSorUq6Z3LALcNfzODrw63c04m3DcXLCZdJPiO94UiUs+fyXqt9Q9W
	9Lmohdss+8Tpq4ZSjDVH52+UWZaBXneCi1DT93Z4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651071958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JoPXF56Dy1q6R7dIxXLYcZ1/dNR+k7jjenxDTDmGhzo=;
	b=FNIaghO1Ecd6/lh4v2ZOILCFDsMXMwmwKqaTGh19/gKjcYKIRPbI21WXqujjxy72
	kdg+mBKwi1ZbKMn7+btKl42hqN/6GPTdDXx/xUOX2r2G/RnonodQL5DH3FnKHyHysXj
	XGfvz9WtigM3RbhJyvz8Rw6NQhYFazRtxYMQq0j0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b8ebd17-80f70bab-69c7-47c1-9aed-a145cf95c862-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23604205e92dc8bdbcfccbf020d070a6f373ea4fdf809a4a0eee765adb1c2a54
Date: Wed, 27 Apr 2022 15:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651071958
