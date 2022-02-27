Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6137B4A83
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645976484;
	h=To:Subject:From:Message-Id:Date;
	bh=rRKPIQ87ry0MHREJL4LFT4OKB2l7u9K3qH4IC+HbIWY=;
	b=Nf8HNvh07NAnvxb+8kh+aTOb7Kop8JQ163EmuXxuus6zlNj19pliI2I49mAbqEe/
	WeqscgD9XzMErkwSA6Mh/SWaIQgccwr9sGmdAkeElg0hHAY2wY1cCcw07mIkX5Cmmkn
	R7gWweNN8PreaDVJs+mZOnuAisnokM16gDAT+V80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645976484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rRKPIQ87ry0MHREJL4LFT4OKB2l7u9K3qH4IC+HbIWY=;
	b=MMzXFalWPmwAFaGTEUCXxhXdN2TSbtD8axqqaEiyZo8X3QlUXAERWSdwdLleyqwi
	QQ0JDQS7gIodGzwnnI9gQAm7mE8WsQCIEzJ44mdvuub+VqTFM5yYokaRQPBTZI9gRSj
	CGuzzwDIleEFhn6DeiYOQkLJb9nwb1jdHHLOAk5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3bd7fb9e-00cb17e9-89cd-4860-ad0f-5555366e035e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b6b3e05a9dbe8784cc333e54a6034ecc23291ece370c0aecf4432ee37aa5dc2
Date: Sun, 27 Feb 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645976484
