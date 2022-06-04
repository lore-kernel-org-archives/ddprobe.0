Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA21E1103
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 06:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654322459;
	h=To:Subject:From:Message-Id:Date;
	bh=phhxLBV9UVjQsyVYdgpMKz6lN3uYBeVwIkRx+69ubhE=;
	b=JL3qAqSq1sP7CdKZx6335oFDVj4sMu3fnRj6D2+dceSb3tRdrWoAUKYXWrwx2n8J
	QTl55f3ni/rF1930++efMkR+CWA1fO6ukE/vvhoR1poW23rkdl7m4TZpZns7WZ485c8
	LRnZQtp6UypxuzDJKsbHzl1weEaY5l4sfq/7kIpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654322459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=phhxLBV9UVjQsyVYdgpMKz6lN3uYBeVwIkRx+69ubhE=;
	b=SFWp5h+At5EdxFv8A+O8Yb/xOJbL4g363dEUoKDyvSW+VlVCdm/lrFNE1dRe0ls8
	YAbW5OghPuiw/VIEbOQHhyYxEnwe4q3dLI75O7NEHLfqL4H5U3FLROnWMXgMhogUufU
	al1m6K3UnZv0UK7sXw5o4Ot7gTyFIxyTQzpSSx9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812d4d726b-2048eb9c-5840-4cf4-a929-73de539d970b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d4beb020615698bc8928bd72655774abe41ae579f2280f7af77bab71e3543e3
Date: Sat, 4 Jun 2022 06:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654322459
