Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83FCF369
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647082584;
	h=To:Subject:From:Message-Id:Date;
	bh=WIlxN3+VWfsNlSbIW2udyooZvnlMBcPAvjLD117KNaw=;
	b=bfdJ7rZ+UU1A/6ivhaNLtI3yd0h0gnmqLSVRmHxjfd1alkC00nZT4c0m3qkEZiUb
	dsDFpZ+LHMFNTMmvClFrYLbgXrCjLOgMzu8KAFk0WzR/LBkwmBAjKtHJP6mR61jtGA4
	a4yifi2jPvP5ry1kfDdV6S1ezZz5knkqHQxLVJeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647082584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WIlxN3+VWfsNlSbIW2udyooZvnlMBcPAvjLD117KNaw=;
	b=dNPTAcneOo9PHFzodTqsT7uYTkaIPQ4lYcUo3AXw8Mzi7qr8qNplrf9I+5SpuhAV
	XMFaMY1Rm2CcWM9Qi4upre8+FbNKf1TghQ//q4G0wCHRDm3NNgSollWpj+vV4l3N9N3
	WOr0Ur/2hwZW0n9Fsu+M9mKy7AmzJTB+xHw/2vnQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7dc5baca-715775c8-45f5-4da9-a8a6-a1deb0f84596-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b55002b6d3b3cda09a2774107fd2f029f5520ef2956d7fa9cf6207709eafa46e
Date: Sat, 12 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647082584
