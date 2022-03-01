Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540147A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646100084;
	h=To:Subject:From:Message-Id:Date;
	bh=U7sIS3OHxPk4UFfYxxts9o3MwQIKJGzOpGGBGHPxlT8=;
	b=lUfKOJoM3N51xI7w9vCpr+6aWYic3IZjHdL5HUqcJvQuQ/Z/C+VrsDtjD6CQphYk
	F5nfOPrzTUfvKEEnhpEOFSb+KzEW3a0wpXjk8DMNK5D+988xy96xPQWGbUFjxbo+FRp
	/iu+dqId9JrH6IGGUjFIUuPeRORw1/IednFRLb7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646100084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U7sIS3OHxPk4UFfYxxts9o3MwQIKJGzOpGGBGHPxlT8=;
	b=FenbekTDFsKh091ab4ZcUXiE1ZuOIJtcjeTb/cryqPfqWew3Gau7pgPL7cGRzOjb
	jx0h3XYJ3neMsuvYJwf72Ip48Vckr72blIR7QV1M1XXUf9zHOtRgy3ZQ1hkAzgfCQbC
	vRHVitNYy2w//SwKlUSVjELEqaSE7EIVrFxbMrSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4335f7ee-99bcb8ff-860d-4b71-bf8b-6a125cc3f62f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6ac1837f834f80ff41ef8542dc263c77010aa104973fa0fb54fb45becba94be
Date: Tue, 1 Mar 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646100084
