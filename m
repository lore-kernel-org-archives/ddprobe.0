Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBFB63C4
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 16:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB51EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 16:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674489785;
	bh=wxk2NFx50f8RZB5n5z9lIxRABk0+Mo/sf2ACMB7eXNQ=;
	h=To:Subject:From:Date:From;
	b=YS0YIINHmbMqWdCKmkIyTG/dCdRDL0hR4PQfxH2RfOVH/8Duv171m6Zt6Gt2e0n68
	 f27RcxXSPZhLwDMPNdLwlBVfX/rW83UzKKYRXVhTRtEqJWZMIwlDJhwdh4KS4jP02W
	 XtjwbV9J5Z9tfDTPjbKjCv++Rkz3Wu+tk1+b5y8sfGAUwk/n3lvhX28OKoV8b4c05o
	 SVRtZ6Gs4hzvdmZs3dNTK5TWEgoI7pDNUy0JWtNDOdNz3hvNn4XEM3acJ7onBdCu81
	 Va3K8r+xsmN0kGAn771Sai32FYbhAyed2Rx7Od/BqvfLn9bURB4Pu54wB9QzYSXWm8
	 bf2rgXIFwmaxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A3DC38142
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 16:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167448978572.10583.13035818480863787166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f2692bce82cee3888f3f28678adfafdd54a1f08acf2de92fa346443e4a2e556
Date: Mon, 23 Jan 2023 16:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674489785
