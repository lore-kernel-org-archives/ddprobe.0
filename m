Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B6E4C7C
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645215685;
	h=To:Subject:From:Message-Id:Date;
	bh=zyx7EoL5aAY1C3aEKBR7pUtWQifBsVC6ZKExWxQiCqY=;
	b=VyCrwZARl7iA/ov48WmBlk7hDLjnr0qQPpHSBPbLdo+PFuUUtmyC8HRdETy7JENV
	zeHqmwwSoGqm9bJcOZ5SKVnUwzIiQkt7IQ7sWL3/fXTm5yYV/r5Zx/M6peTj2WKEjWI
	cNcz+cSCf0ho8beFN6NBE/VeUevdoNbolvptFyA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645215685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zyx7EoL5aAY1C3aEKBR7pUtWQifBsVC6ZKExWxQiCqY=;
	b=jAHZczqyOfGcwZnZrVxfxZny+8c4tGRe9NToWebgz+8kAkbpCq6PFUUCOikR3GQR
	mK13vOPqTDH/YVrcibs35Oeyl5FPGRXiIPpCw2e3qXFy5Xrv0hLALKqe9JxhYvLupaY
	aYA4IX8MqIyg1h1sVat2FfEr+uiPWkgVqdf9j1qI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e7f18ef-5dadf614-3a34-4e05-a6d3-62913d98d5b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ad0d3df91daee7f28ad7befbc8a8fee8bb1c3dfa0d7590edcd88d4d5fa9ca7f
Date: Fri, 18 Feb 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645215684
