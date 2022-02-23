Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C65B37A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645659685;
	h=To:Subject:From:Message-Id:Date;
	bh=vKJq3u0Tjg/VXCfFoB6jeoXkkA7yTxHacNHs1ufJQRo=;
	b=CMyNWvhR9BsM+w/OhUiZG9Cx45noXI2u8wgwEpyCNghoeuc4mQ9hqbLkVZvi7VgB
	iUZS+hZe6/pMfWrVwFPvuhdF3zyl95sj8iTw9y59J4p6YI/iJP9aXk5JZK2UFQ3KD07
	enednicO7xe33DS9dfqzvpBui/x0F6KUGG+KGHQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645659685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vKJq3u0Tjg/VXCfFoB6jeoXkkA7yTxHacNHs1ufJQRo=;
	b=NIFlMWEcs4TyZpSTbMhpVAMk63wlvY4l2e/buZp1q1DaKNgsKiwJJbLTaG6a7Ltq
	fDSIEmXIM+HX/IaEW03i1c+n+RX4tkbKoM1VflTHXU/IIebxR1MznKCa87DD9Emfvd6
	EMyz7qiapMIsiJQ9m8sUci8jUcPKHDDpBoh9W2Ds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28f6001c-d62693fa-9a2b-4d77-ab69-fd2230f004d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 576cee233921bef6961a954dbf763bb289d41a492fe1fe5d5fb4ad9c9354e40f
Date: Wed, 23 Feb 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645659684
