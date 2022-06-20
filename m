Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A383D7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 21:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655760959;
	h=To:Subject:From:Message-Id:Date;
	bh=9ZyJm6kzXHvqlLBoJ1WmCFWeRNF9HEOr3lvmJwkUaDI=;
	b=OqV2OsDV3tIcLButgtDJwBVkFgq7BXg/d0dFd5JvbgfC8X1MRoLDHfCtl+hugsbD
	Z+Vdtm5t10Owx9GFWpe4jKCG2c0H8m7cX0dN0+8dzvMhTzdqHILluIrXXtPKkoEO/kY
	T8v9HYIpVILSpmst8mIuIN9TcD4G44lpr9GjFdy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655760959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9ZyJm6kzXHvqlLBoJ1WmCFWeRNF9HEOr3lvmJwkUaDI=;
	b=ee2/PwRlVRm5tt5mNDB1ZPghWyHR16Z6ca4DFpPqAa9Tec/minhBvIIUU9PFHFzu
	bnik/gAsBfMI2papgGTZbLF+Opz/rQeB24Ac80TCVxXoFkEtlKYKCUVDckZTnrk5fxE
	3arHNXVl3UFhHba+5szVqaP27MyEVLiOncBN6HhE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181830b3760-53f5ce66-6925-4509-a2ff-c938c23572ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e713b8af1261999356718174f69c3cc641ddc0e3733197b613694d10aaff3fa
Date: Mon, 20 Jun 2022 21:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655760959
