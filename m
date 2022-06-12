Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1228E1845
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 22:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655071379;
	h=To:Subject:From:Message-Id:Date;
	bh=jQYZBjfDwdLSLUNrKVjv+TyGZatK3Zi4NHTdiONkBqw=;
	b=ZsuZCstvPbuqYwmyUoiZzYuRp29D9I8mRFlLkKUse1aIYHg5FX4mFmHOmQ+tG/mJ
	U7u4lPkUgeExIfA8416Z3qkzkj26OwfnFoTKTplcDRq5aEW9FAhI2VPeVho+mGBOs+K
	U2MR22/nAGilE5OJr6Ah1O4YGPqAhpgP93kI+1H0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655071379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jQYZBjfDwdLSLUNrKVjv+TyGZatK3Zi4NHTdiONkBqw=;
	b=IYt/Py+s0pPqGLSTj5tu/V9o6grhGOR0tyWVO+pGswjUMFiN1ENgcfZuAoAOPtQh
	7XLtkQnUr4NmUZSYMYH0iE/RI8MlHmAU+/kvk2cDS0LVQdVyt4nwhfoiSVGt1ejadp+
	NhFpZ1wim+rpY7kAA8xh+28wUoyEA7HBGpPFL6W0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018159f10f11-5c585b07-f1ba-4300-855d-00fb127ad0e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61f111a092c9cf0d5919b181cfbd8822e3223a13ae442c327320eaf7d9d460f6
Date: Sun, 12 Jun 2022 22:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655071379
