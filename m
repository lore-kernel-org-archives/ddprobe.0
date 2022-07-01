Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB91A3D6A
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656703012;
	h=To:Subject:From:Message-Id:Date;
	bh=d1tvraSP0bBKJ67atwJ4XJg96ym43YP5Ajt74qEzPOs=;
	b=RxbmJKtqsvMEebFNGuZ9JGuiBj2jjWcZlMzt/7UF2ZjuL1AqEasjo0IjUZ11wiEC
	lgExg/Bfk9PKLCc2HTP7lAXJYvpO8YPiSsxxhWEgU05ABFPdCVlIvWBAfA8ldFgYli4
	kZBIDzYIzkPQvmBSgUliuBb2YUzFJ5YD1++CRin0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656703012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d1tvraSP0bBKJ67atwJ4XJg96ym43YP5Ajt74qEzPOs=;
	b=QH3+Vi45XSKCClyJxFxc5m/D2Zrh24J6HzjOi5UnxRunw4qVl1i0QfGEC0rho1Mc
	n4UU6Iyd8efGcFyNqDuRpgMeklhptyedwZY7WG3CwpkvGH4bh89PtqQsPuby8rVDYLN
	rG41JDoYA+TFU+gk3pbhovN/22fWGQX4LvEEle8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb31cdb0-45bd2562-1168-4aa8-9f3e-0db7976e38d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90cbba12a962c525d798667cb4fc4a1522e8ab991adefa2a78eac35651b32e42
Date: Fri, 1 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656703012
