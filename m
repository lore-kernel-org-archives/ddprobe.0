Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B534C68
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645219885;
	h=To:Subject:From:Message-Id:Date;
	bh=MiIMbsccrtiQa33yESVAaIk8x8pcW5Y1s4p2ZnHwAFQ=;
	b=XhtMVqOhhUFHsYh0riM7A7kFIBoJ6FSE6puBeXKSyoYmurzlqwHJ4jWwMuxsxLd1
	KQAkKeYv50UNvvU9SCum4ReCxk6wTEslCw4XvgqyLbPbXptrrbW3iDc14kdZTXaWPty
	Ak9LF+ppB6VyWQCfDhbMDQNEwtaTHPRc64qg6MrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645219885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MiIMbsccrtiQa33yESVAaIk8x8pcW5Y1s4p2ZnHwAFQ=;
	b=B7PFmVWNC6BphfI/5InAI8iiQqCRN6cvj0FQ21xQRCDOtMTW67x6ZeJX18rL8n/6
	0lkHlI6NnEXuL/shu5u9KMu99XDfni4QYRd+dF81rbedFBbtsU9HGbaBgOeYr0YlQCT
	cNT5pfi6XJUkJrSWsrOO18Jr+X6ObB7Ge7jSFvTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ebf2f21-78200f4e-4703-46bc-bd65-770c03c800b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6c87db8827fec3196e747ed925600bf803b28803c04556e6071bf5ec003da4f
Date: Fri, 18 Feb 2022 21:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645219884
