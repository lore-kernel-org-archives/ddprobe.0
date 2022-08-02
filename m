Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D097F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659459653;
	h=To:Subject:From:Message-Id:Date;
	bh=LOoK6bAupWZ9WxKF/bx3xhD4g/bWIiPpQn1QpISH15Y=;
	b=DUiF4io+xyLyVtD9+LEHj95oB0rHtNiLqt0gZxi1r9veO0jO+TkkUa8BYdx5nVRm
	2nG/fekNCEcw4EQCB6fX1SlUWDH2K7C77RvhEbKF6kPNBKZFbxcxywjtBfb8haR1Tw2
	yx2MUtQ5l2DM7swZEnk3EqFZUvM9pH79shUgzV4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659459653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LOoK6bAupWZ9WxKF/bx3xhD4g/bWIiPpQn1QpISH15Y=;
	b=PVPku5nLNw15VP7TYJXXJqqncHe7uiJH0G+HJjWKXW6cf8UKfFVadZmNUR/REz+9
	wrZF1vGrs/fRNkEbkNIqWXjSnUlWsZOaYDbXu1Qb/HahKs6O+rCkxKro4Hk2Wv/+mL/
	7fdKR58fxC95OLPgxnBHpSPySxeUp3Q5Rnh907eA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f80cbf6-15ec1d2a-6a45-40eb-945d-1dbbee1dc502-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4256c0de9292be29c03dcbf0f499ab5f848b23af02c1aa3087b3005344e15b00
Date: Tue, 2 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659459652
