Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48922568
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645436785;
	h=To:Subject:From:Message-Id:Date;
	bh=FtLU78sqOAU9k3sWcG774rH3GGBQ5yCyKFV7MCs/ofs=;
	b=EdIT/67IbqeCJU+bUv53tMe+sg9KNlhyywWoA9tkpv1L9rbwZuj1eRTAeGK4FRp6
	Xs9VHghIrmmjD5LCuDAZWKSYJ3YbqzPwrbkGugqk+fEXQlXBcUe4z60PNX+yi0jbdg/
	WOPuUYcB95YVtFJJgxYKFTV+fJo8TIkR0xcsHNm0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645436785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FtLU78sqOAU9k3sWcG774rH3GGBQ5yCyKFV7MCs/ofs=;
	b=T+KkPbzKuBaSqByyBGaWATFppEm6/IL8GtMrrw+2yMty1s3Cwfxc9BQRQZA6QWJg
	uD6xO6gGw9Vnencazp+HVWvCNWBN1hiVrgn/fY42UvDohvsDjDNhc+/MXy9wQGQuNRw
	yIO2NkLB0+I9SEpGfI2Rlm3uSIX/lhjtMoys5Kz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1bacd0a7-6ac77b8d-9c73-452d-82d1-e7c27320d299-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5b5eb8beec0d0d0db566c1d986013d0bf9f37031825d0da0d50aec3b6eed318
Date: Mon, 21 Feb 2022 09:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645436784
