Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D6C64C
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 03:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650253018;
	h=To:Subject:From:Message-Id:Date;
	bh=FhzwgnI+tLVHTTTFAqQrPk34EZEnQ9TW41eJpm9pUGo=;
	b=LXb+rFMytskPYP+2OsXJeZ0yPmZFFXUtyOaOjzZ48HhK+wmyYv4JVct27a9OtaQP
	wkwhhUruSe06vGCxM6EHPsIo5+D2WC3XrfvXt5LjhISeUivWZBOHXgUDCV7eel7GFlo
	Bc6MJPdk4xtUo+X5hdmTWv/hs+G9Xo7h2HQJQYTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650253018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FhzwgnI+tLVHTTTFAqQrPk34EZEnQ9TW41eJpm9pUGo=;
	b=JZ/WEEK1K/BfNDsTnpQPcTW8b0Suzet1Qxn/cSFVy9bEGZmj0Ng+un/SZ+SRBg2k
	sruotgBLYgL73wMug4VXMR3HvfJauADCihdkys2Pi0AzhaNyFsY79qtP4hxeN2o7D5q
	gewjUDalB+hT6bv6fgfqUwIPwb6NqhbndU+S41es=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803abeb4c2-0cabb8f5-7c55-42c9-bbaf-0e6bd394b6b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 750e3e12e72ba0c101c16b2e9e6a9657942abac3ef768aee904f907f182dcaa7
Date: Mon, 18 Apr 2022 03:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650253018
