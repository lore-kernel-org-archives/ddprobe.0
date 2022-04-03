Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1237A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 23:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649028658;
	h=To:Subject:From:Message-Id:Date;
	bh=Nz5WDxDQ8mAKq4ChOQUu+tCTXYvOtoFsegj2/PKRzoI=;
	b=ACOOtFQt0OHYItLV6a5pem6qax0dUyWze0eqWZR9ObexTIUbPgC7yMx5hWe+C2YS
	vN6NHbtpGCAEXkm8ei6vxYbrchFTy8um8XqB+shll/fMVFh7zvllVhlPBfO3/+lN+5W
	yLaH52+Vp2rJinA3VZ8msWkr3jzaVHhSaHW/cWD0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649028658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nz5WDxDQ8mAKq4ChOQUu+tCTXYvOtoFsegj2/PKRzoI=;
	b=ia/18BdU30E1aDKZFubI+8S77meDjnX/81PtOFMndzTCaxbvyQE5yeIHJO7znBy6
	ns7WYs4+EhIFFiEe1R4HX9IM7cM3ukJBga0pyYHfoH7t8e44tgkQnGiix2F6IrIA2sP
	I3Ch9rHcIfI9CXAspt1nUnVnHnjB7L9vDetyqgHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff1c47476-195fa509-e8b3-41c2-9bb3-622d008a176c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17a9c1509fef2e81319b1ce96df2265fb87807cc33ff04ee9c64225eb3ac04a6
Date: Sun, 3 Apr 2022 23:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649028658
