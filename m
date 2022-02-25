Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5414C28FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 19:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645816585;
	h=To:Subject:From:Message-Id:Date;
	bh=Z29It9iyrtFWMfSFerwl+X1PwnGXUQ1+Gln9d7CRBhA=;
	b=cZvxI5Mwf9aRh3gNPksw+EkJ921ma3ay/D8seCtbyTr44qQwDUEE4edY99HLb1N3
	/ebAy0f1Ywp82lRITapS6V3B/RHoHqlR5lqrDi/lAFXEdzKk3fG+V07EfjCT2fm2FWk
	Ppw5ruqYvqr89BVZiEn1eByf9XmRK/idoNsvIBPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645816585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z29It9iyrtFWMfSFerwl+X1PwnGXUQ1+Gln9d7CRBhA=;
	b=eYJk9v2aTEBxmtlsjnwMqGXdiHw+K3sz2YhGeBsLPLHsrM2NIpHPgLyNvAoFiDlH
	BYSbJ256qCCbLlROvbItigfvdX+idlDr6x3/usyIQJjWWvUs88dOIIxJyjf7v55n1ey
	FASRFPt9IZ/6ms7Y2H4d26/TvnKdyGoccU0dPgj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32501a3b-3431015f-654c-411d-89dc-59e5cc431e29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0a603d4f7042a0cf880147edaaa6de95dfd150201a09d1fa424faab1a9e5f24
Date: Fri, 25 Feb 2022 19:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645816584
