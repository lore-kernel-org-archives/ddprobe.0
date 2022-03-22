Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9280EC7
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647968185;
	h=To:Subject:From:Message-Id:Date;
	bh=D+MhBkCoc8USqD5xXeelZ4Cw3at0dH/Kwr0htoB8gIM=;
	b=PbyloinCRZtQnpbA7mFcrPdhc0sGpMKsNlEnXtQ8VIiaEivFlN15DZycD0N6v8Mu
	JFfdeNajK4OuFfipJOiIIxoNMwLUk3ucdEbnEX6KWLTBDa7AwKH6Tc+MBwR5jAz0563
	pjDMP9kSkwejwWYJES1dj55Jnid5r/5kjl23BxnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647968185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D+MhBkCoc8USqD5xXeelZ4Cw3at0dH/Kwr0htoB8gIM=;
	b=OmrHcDRzDgWYDQyy2E2dPgCkuWjlrXaq6ib2/hAU+dWCzhKiQxX1oUQYXisCIRnO
	jOiPEHKlNT8JtNYe2OYzG4FRQh5BdrAIOQ4R+Y1t/Y/x00DTbCS86oGDdHVLGt28J2q
	7/Z56diX4avYKnlS2k8/qC3IiiZSj70akTM6IHiI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb28eea15-b988dc6b-5535-45b9-804f-b5fa0ac1b7c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77f9242de839d7c51cb793d7f52b837aa582e0dbf224b5e6fc09639110176068
Date: Tue, 22 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647968184
