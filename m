Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F46B10EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645761685;
	h=To:Subject:From:Message-Id:Date;
	bh=+1rQp0tiQQGB2H6z2DpP5F7PA3H7mZG6OHcUdeQ2yhg=;
	b=Ch9DP1TCT8SduXUZRNUI2sTCcxb4R0M4CWWaMW6ezH5pUHEGTOCMkupPY7pnYo1w
	8AwCbJ804g8K/IV9HU41J4NsTQbgQ9nEM9EXp3lAs6sOkK2X53EEU1nK7FPTwo9ttEO
	H50IRLCSgccTKhSKPyv51jk3WnhnC/zT9zjcGlW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645761685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+1rQp0tiQQGB2H6z2DpP5F7PA3H7mZG6OHcUdeQ2yhg=;
	b=PpMUl0+WkjCpRcxJIuCBKr+g6tRCeJjFnlqwI+6mMmC3WycCI6WnJMW5w0pK4BTL
	OZHz2OSiZ/rQO1QXKhh6UF0ze2EAINAm6is++ct1X838vNqqJMWoHwAgySR4EEodJ1W
	ni5+dCm8qX0FMPofPDlScKHATMFh9ybx5Drs9x9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2f0a6587-7149cefb-0578-4067-b801-68fd9ba88bab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91a2549232fa6f66c6d3ae3acb5d74876987e9f43c1bf9b4415965f0301bfd10
Date: Fri, 25 Feb 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645761684
