Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93197A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646071585;
	h=To:Subject:From:Message-Id:Date;
	bh=4WI3j/RVmIkcpl3FUDQB8xgqqM/T7Vq8SsM+7Or/73w=;
	b=VRMeiUyJgrCyzutjuOconaQHLjIqGtRvojBr7Sgp/bnp3YLxGzaap/MmzwkHEPoz
	WMM4cMw8vgiKPcKXS0PFc3xJYQ6aayGu61qO746R0LwiWnaOBAi94IBTtR6OjfEZaXk
	lnaGoTAAC7oPdk8qm3gERKuPTewPC4QsTIJHEDt0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646071585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4WI3j/RVmIkcpl3FUDQB8xgqqM/T7Vq8SsM+7Or/73w=;
	b=LcCh98WVuxX1dXSMMxyfww6fMScNNfXXCtDMWYB3MmDE1r8Pa4dSk0dFXQuNFX2k
	ptQkNqWiaso+6oFRWZlZQsZiOvmLLGgDl+rFuRNG3SB5hWzXVpqnUM+kKhMY+qiytew
	q94XDCC+SmC/TtRPTd7cvyTN1nuPzmlKPXAgLHJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f418317ef-3d1f054b-ab7d-4f9c-a09e-dceb839fe759-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d4f9c97c2238e640daf3d32c83266f00deb21a86c49a6d1368ada115b887cbf
Date: Mon, 28 Feb 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646071584
