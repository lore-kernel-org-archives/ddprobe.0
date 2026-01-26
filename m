Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FA123EAB0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769438633; cv=none; b=dtp4bPq6uZiuxyMVmRJMxmEjABkC1RQ87eIeQh6u8Z28/G1nQw5VDv49Z1cSMiCeSMSGt0cYQI27d8h4kEr8gTHOzi0eBh3AorOErYmuFjDjzZnEVlr/v3B3Cmgr9VWet2grIG9uNpo7S6DQ2v6meR2vOzDGmX9radV69rHhJKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769438633; c=relaxed/simple;
	bh=ZRILuhX7KH33Fi1zrNVzhKXt9Uw3IKKoTSy5aErlWF8=;
	h=To:Subject:From:Message-Id:Date; b=nFV2uX0UNYYT5VWo0c5c0ZX9Lv0X7nOmO9EbNbRwLKUJYQ7wGM4H3dHGlsxv0fxydjhia0QfQwbLhl7y9AfInBDVNGylVIhha3cTQc9CBiK5h73oE75tGmnnL1rEg21eVYX6xW0ogQF6jYAXtiVAtzQo1EwpGKkQBdnxzWXlqCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIxHttlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIxHttlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D75FC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769438633;
	bh=ZRILuhX7KH33Fi1zrNVzhKXt9Uw3IKKoTSy5aErlWF8=;
	h=To:Subject:From:Date:From;
	b=dIxHttlCQSNVXizx04veVvquSttB75QfZ93+yBl+5Xo/cVBiw2fNrIWGo8KG6DTsS
	 XqiRspPjQAbid9kutClEiK0sIbz0Z/SeenfP/prbWp7Etrq7f+pQewpJurHJXfOeCY
	 06wX4wQKAVKzZzdCOyrv4yuPExdqd3murc6Gd5UjsHuJTwf1nXr5KjgFxRFHPLNeob
	 4AQKa/P3wx0QYia5JvU4AuisWyXOkqDIb+xzstz7fyswp+2nIGLef1uGy0vwhgQ3O9
	 40S1mEi4nXMW7uo8Mk4wt98V7ADQ1/6bRG3IAQ92Y70UMT7w8XxeCXC7Pa9ktT54WM
	 gMuBgZuiJjlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D7D13C22
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943863357.30185.6383585359007062694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210e16ce178f257534016b2567c951387ecf2442d38764f1c697888eb2b6fdfa
Date: Mon, 26 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769438633
