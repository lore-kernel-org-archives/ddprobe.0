Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27F51865
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 17:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649699458;
	h=To:Subject:From:Message-Id:Date;
	bh=sBqRHBZQkuhZGGLXUECdS7uxcIN+703fTIhmNv13HeQ=;
	b=iOSR3SsOJFQRwI0Y+kET4vrW1qMNFBGV7QIBMawmLFz5tSYfPGPzckMn/yDv65KL
	G5BUqqWTdooWGYn18H2QdqzkUTARoHB780Xmm5VSJdkNKoUIG0dZD7Iv/zxNIThiIUG
	eL9JDjqw9tEoLjS9wAQZ34nGzq/xZ9rw9MX5HuQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649699458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sBqRHBZQkuhZGGLXUECdS7uxcIN+703fTIhmNv13HeQ=;
	b=OcDg5L8K3fsyuSiMv3oQzoetTN3PDnEb+2BKCWqEWRhA/JfdeHOWqYfa3snOOXc8
	SPNRunpxR+Ft8Ya4BWsvqNHwr6ONFsEbWjht3Mu/7Dg2LWJO2ts6cpQZIaNwlNiO42R
	hKrv4ItmZl+VpblOIvS0l3n3q04SovpBHWlYEJQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018019c00ccf-d8c14aac-8e89-4cb8-bb2b-bc0a32dce09d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 478deae8d0d14840961001b2104fcd45388fad71ce65cecc0b3148857d998e4a
Date: Mon, 11 Apr 2022 17:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649699458
