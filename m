Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8118048A5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645212084;
	h=To:Subject:From:Message-Id:Date;
	bh=CwCPcpaudKaPQqjeQUEtAO6hf+OHQGwl2Tcq4D3qu5I=;
	b=KKpAKG+PhoK7tX17xKWHuSjyZFxkMZeImc4tn7VRdjYF6nr0kYawJQa2no6ueUTI
	DjRNONxUP6ACGtiRVmAaPwdLgH/uQ8mTa311xTuk9qzzdp1eHy0yafYsgxwYEwF3gxs
	i/lFns5AuifhUBwUEex1GZVoJ9FAs+8uRw8S0tWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645212084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CwCPcpaudKaPQqjeQUEtAO6hf+OHQGwl2Tcq4D3qu5I=;
	b=eKQHlG2lx+TIAQDH0X4CYmxj/50ZS6LBR396dA49V4i33rHOtoIMKavLhy03xWUZ
	AQEXKzTJ4g/Aa1OYua/BZfTkL8PfYPaHhrm2ZwRDu0KZcCXYGWeaVhHII3PR3A3kiNu
	uJYj9hxiNGzTTIxhwNeFs49w4IWcGkh4DE3PclsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e482a00-8aaf9ee9-e362-4980-b729-a3c871f5a4c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ba941beeb9aef800539b80d52bfabb1c4b7b82ae9219bbf514e12874e082c6c
Date: Fri, 18 Feb 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645212084
