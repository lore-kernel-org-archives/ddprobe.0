Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E25D7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656467212;
	h=To:Subject:From:Message-Id:Date;
	bh=YJbtPVCoPMvBm6QYSr0wnW9tP+oexBz+IyI7FtbLb6E=;
	b=g7S76nr1zH3nvEutGSSx5QyMRMxJMyXnLpYBoxIMQ/SEq8zwbVVJjPuc7jFLWSi1
	k/7XAuC+EGBg3844eKR2jWMa7FxSYcSzXSyGmVf7/81gS7+NTL4H3z+ykKJgE9l4dCq
	Vi+qnF4VtF7Ylf8asID9dNj1i3LD66atiX+GgC9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656467212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YJbtPVCoPMvBm6QYSr0wnW9tP+oexBz+IyI7FtbLb6E=;
	b=WSV9ncst/aVCRsac4ZTjDcOjS07be8AdkCM2jvp74naGXQf6aCZ9PNX/rv2rzcla
	wVQ4YMlSbQ/hR7tFTtzMQq0e8Ap8tMHOGoeDDQQ86hd/45kWzcAdjg+XI+KcwORdOik
	+MJIX3OqTZkPoKC28QKCEXe9qtVh1rOXk9qUXL+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad23c80f-7adfa026-19c6-43d2-a8d3-f154dcbcc00e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6264b4601638d5bebd8b8812361613f8624bed81e31dc9c8dafad3f8a06c837c
Date: Wed, 29 Jun 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656467212
