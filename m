Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B9E1FA1
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 08:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650530278;
	h=To:Subject:From:Message-Id:Date;
	bh=+2EEo5LIWDHTo4lQDWSJYmM2R/317MEoyhf3cvVbTRo=;
	b=l9Ow6liq7iKhBWzuzxBzcraG92YCmrYe980zYmH0hWw80PqPsuT3ZSyPcDhV4tEw
	ZJTMh5kEgzeFY3ApZx/b7Br8vG4hskpSWGqPNZEYJtN5J6ssukaOGq3/q4yqL8rLs4k
	gMTfPgNCqFIS7GTnFDCgUmOhTnS/x8VZ8cKOL2oY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650530278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+2EEo5LIWDHTo4lQDWSJYmM2R/317MEoyhf3cvVbTRo=;
	b=SU35ZAHQEq/61Yn5kIbC5ABb38gqMfSWIqTpJ+PjVMdszPPEtvB4q+WLUnrDNdCC
	V37MAffUI2Tza4RonvPLyBXaBP2DVO0TrUz3znDIgyRN1ETrIO/Yd7O3iA3YuRjKeID
	NxxNtRSkzAJcZIApFK2wGZl2WNa7LZn74hCaVF6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804b455b76-78d6bd22-a774-40ec-b887-f42f22f0234f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5f7a8dfabca7a1680dcc8cb07be1b125214bb08582e597b230b0c44c5770a11
Date: Thu, 21 Apr 2022 08:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650530278
