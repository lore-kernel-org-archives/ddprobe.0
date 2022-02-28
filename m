Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2982F2E
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646008884;
	h=To:Subject:From:Message-Id:Date;
	bh=i1y8aEMbZijRD/jX7eCACrq5Z9hSvxM8qtOSbK7BX6E=;
	b=TZSknYdOvvoBFS7Jur8/21opuE/DmwI2cTaD3Eil7m5FWKe2Y44Frz6e+Z2qAOfO
	VLaBR8ky6gEQhEzvQJyKBcK7FFi31KqLXJMEHiPNblxnMwmWn7KbbBktwNoFiZzDojA
	jmZ2MMrAHiP0GIEaIR41sxFW5V9UltIIIwtYiquE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646008884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i1y8aEMbZijRD/jX7eCACrq5Z9hSvxM8qtOSbK7BX6E=;
	b=Or24BWJd5Ro10Z0l+VRa8fhIPbeyA1L/8mwxym8io5wg++RF1e9vQ99U6e7pUjIJ
	QKrROGMNJlpTJzca/DC/LIW3KfbuQOMVERAHW6UG0UfMjvRu1sdw5zKCklPuu37jpWe
	u4nfL459JxAmMAztmAkYrCxePxk1/ikSjNtfn2Fg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3dc65e1e-6110e39f-a1da-455a-a589-f56e62279570-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33a742fd606bf50ce3be907750990146e1c71fde403fc28f23d6716a8a515525
Date: Mon, 28 Feb 2022 00:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646008884
