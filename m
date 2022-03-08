Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A8FA7A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646723185;
	h=To:Subject:From:Message-Id:Date;
	bh=gXBNSGR9PUnHHI/sJMVZ+cqBczKhOv65fdS8iiUcsq8=;
	b=fwBkWEn8meh+6NOsQutQdOK+m5rBGaRhNmmi63jy+TlqSum8N6r0ZzaKAMwbMSdI
	QQzzTOZgHnkUKmL4uuL33+ZrC053x4FUIQyfV1ZReYD7PeBjLBLw/qnoCC4HzrUH3T0
	yZFuZsKvwe22Qu1B/LHBetM6s1b96PfTbYc9Lgb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646723185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gXBNSGR9PUnHHI/sJMVZ+cqBczKhOv65fdS8iiUcsq8=;
	b=ODE6P+r9UF/nRnC2yA1l60yBTB85ofRm9tcMYLhiW/OgOp6JHEzDO/a0Ys5oBToN
	whcwrnwWezho40OTSfvQtKRgvxQ0lWILowEWsVSbFOeLPf0qJBT+CzTpk1imUQg6fOp
	sZriT8P3YaAKNTQ8qh4ef9zpeF+2jIvoop0CcIxY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6859b84e-af70767c-2764-462d-a525-fcefc248accf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5960b35c32f85b2a6065a489db7e290b9ac0f868a9332b1d64a433408a251dce
Date: Tue, 8 Mar 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646723184
