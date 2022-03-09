Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91EB115D7
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646814984;
	h=To:Subject:From:Message-Id:Date;
	bh=DngBwwqrKYSfYAapfC2FYM0lYtW0HKEE+CeRuryl5fk=;
	b=cZuOeRWtnX2a0w/n6393HTTqXaOOxl5l8u3ICRmS7GTrKt/hfn/L5Xi9dO72RCle
	NwVHcUMtwJo9vajU3yH/VZGjLrL9jXUqEES/WinOXEpJu12A2M81S9TILRWZXKpoPR7
	HHgFj2/YHlmPNRENYMA5GJkfdv9ACdNiseKgzZWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646814984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DngBwwqrKYSfYAapfC2FYM0lYtW0HKEE+CeRuryl5fk=;
	b=T94VHN4WJdlXG4dLSrA02OzKhKjDDu56KAc64lAouIC2OpjQoQwz6qDhhoRF31vU
	91FBIyrB8dZFoPuDcurHDuxKyfjhHc1p+qe4+SNWk07nV1tAsdes/bcsD0T4P2MR5Do
	XoKFcQVk2WHvRzp2/UkAFXv21F+wEO+K5TWVRAnI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6dd27a14-7c2d3b7e-702f-4976-8b17-b5b69e1be23d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a93874d44d4a9c24ac12ea972d6ab4f70efd8c57ea2d07d733f37d22c2704ca4
Date: Wed, 9 Mar 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646814984
