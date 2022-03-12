Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C85B361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647099984;
	h=To:Subject:From:Message-Id:Date;
	bh=CZTvAs4eRly9afYRLIUlaQ53r40aRXiA6ptw9fSWGf4=;
	b=krM91Iy2HML65fxRORNkl7rhR2kr4/m5Stz+0rsMim6RFE2g9vX5ASVbe6B2gMmJ
	5G0IB6pZLeUyFXlLJE8SDJb4FzI7WibXOhv/G/Hs7GM5FynRZYbrEBnocdYjTmSwyAx
	doSXj7Ps9xZzIziPMxdPSy/RLNlMSc/yOmzt0A4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647099984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CZTvAs4eRly9afYRLIUlaQ53r40aRXiA6ptw9fSWGf4=;
	b=dKrxoLrDzvLmvzBxZCXlpBzK4DjcXfqYRWjkryPrWZViwMSIrGJYZZ1oa9HTMxMO
	j/VTMpLqQZReIHlTZiz83m/rtHIK10yTTKF9elvdsv12cW+tnh/3Jx/2WjnGWuCw8ax
	fInZmJKASxhxwAVrUajxJaoF9meAaCLxAHZmztKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ecf3b4b-271f747b-0e9f-4ad5-b08c-f12e294ea556-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c06877aed51c1511b09540f7e3203a88e780c14311c02e71f6625a9e0da1e22d
Date: Sat, 12 Mar 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647099984
