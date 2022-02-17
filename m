Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F5D23B4
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645061185;
	h=To:Subject:From:Message-Id:Date;
	bh=7hW1Gkc8cy3GrFfgEj7w+wXQvCCN2LtCfk98jGswg28=;
	b=mRvwkFtIHc2LfAdCvLg50LkOztt444wKUDtz8ruMLD47LSPG8nrg8x/VPznuL8jy
	DFlMKTi7EKntnWkWNCIRuF+OCNjX8iLQFDaYSqbtF5TeRK6pRzLA3XDvutn7dJnZNHm
	VD1wnngAuvqgfh3h0IWkW43ZMS9nBhDyiTmr8R9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645061185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7hW1Gkc8cy3GrFfgEj7w+wXQvCCN2LtCfk98jGswg28=;
	b=c6XDxlFqVktYqrHAq6uDrRM/jj5KeN+l0jwAx0zIAbHZ902a+q3glHl+n6pclqgX
	JPga3Q1QvurAFaGwnzrkz6hJDfp7/yR7FXdG2dWdCUkf3mKvJBt1cc7mS9UP7AuuujD
	z+Re/VJQymKH7aMNyZW2jKpAUyRlvBT1wouMPDJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f05499d2d-92ec1c36-7db4-4685-ac3a-4a288f6b5cf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09597ef3027a6eb0109f7df848139a3412c59ffdf80ec79756618ce87c8de98f
Date: Thu, 17 Feb 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645061184
