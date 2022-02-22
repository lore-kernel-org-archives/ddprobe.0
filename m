Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801AA6362
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645524685;
	h=To:Subject:From:Message-Id:Date;
	bh=oCnQ01PRKWVH3NXDI1GBGMhvdU+LetIeHvqMyYOQTWQ=;
	b=FJgyuGdrshmkZY0atVhTVRzUX9MXbvv5ufsIoJhZe8tJnwo4XSFttvSQHA9VnJ7R
	ctm7WNQDEALxUFGTkJI5lizwPms5I2sdBgESK6NmeAF4DSDXivOrTbOAJwB6riR4v0f
	0vQs0LXI83B2hGpPzNbdJavxNwH93PgQV7mqvzss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645524685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oCnQ01PRKWVH3NXDI1GBGMhvdU+LetIeHvqMyYOQTWQ=;
	b=FX5xmnibmmBnDBtxMMYc4P61PpncZcrftBCjDsaBluXxkzth5L5cT1z496gyU2LH
	uQqbtbOhpPcbRzmsGSCPohMgVEbpVdWuz0GMkdQAe7UjOC8DES6ZhP4d5Wf73QbPeez
	xB+IRSKxd069KHQNwnJPBDpbA3Z/hw4ygtk2KKjI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20ea1002-a763ba9f-6c82-473b-a588-55692afada32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 160b4d040ab6a7aea37de42d4566e4f080993e1606437db58e9e01e8a86ca6af
Date: Tue, 22 Feb 2022 10:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645524684
