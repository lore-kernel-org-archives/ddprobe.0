Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87030A40
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 02:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647226285;
	h=To:Subject:From:Message-Id:Date;
	bh=jQGUWsVt6ZEzP5ZxvzsnH5x72rkdWdO9mhw6cO8e/a0=;
	b=R3JVMGpa2nMBF0JxS0nTy6fMhnttqkQdV1YubH7jRERrxWFbVh//4PSOzsoL2N6W
	p7qPWDs07vTn19FM65mej8QPkhbznP+3SHMxLEMuMVXhqVu9uP6RKe6woloDtcG9fpE
	EF3D0gcvOfsH2n9ep95zpj0X3lctnaDgD0+39gBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647226285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jQGUWsVt6ZEzP5ZxvzsnH5x72rkdWdO9mhw6cO8e/a0=;
	b=SMcOB2mEsxspPLcrjxs97sPXgOnjbDsANOQjqlxZ7PWrcUzR2S2G4opCRLY3Zkq5
	IXVgULttfXKL1ZUDxRgurCD3aBrKkMMK5EaKw7I4IEIEzu4JxyDFN0CFK+sCRV1kBNz
	KZW+25/gBykXq/HgLsdova/EhLdVIT9YurN6CTy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86566c0d-457f80b7-98cd-43fd-bd3d-4ba7518be596-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 874f89addce4e3dc3594ca5b32a8fdf21cfe9092bebbed4fd85f70bdae8e99ec
Date: Mon, 14 Mar 2022 02:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647226284
