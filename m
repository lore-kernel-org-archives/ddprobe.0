Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C23615A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 01:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648345678;
	h=To:Subject:From:Message-Id:Date;
	bh=po5LHGDJSGr9GFL2O0mJWTjRrukOwzjPJC24mgSXiRM=;
	b=WAkq42Yx9mALsAEfR6soAqwICp6B0OY59l5rynT38SnNSz0qJ5cGy70YLDZRBA7j
	Dw3YjJ0cL8LAVDLaUgvbnqrcgaHdU6LXNoV7NtaLRKRUQxqNrwx26qRf/1MS0/tdSIU
	7ZOQjczwZAlb/mJryP+/6KWH6BTFFsMejPmytTJY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648345678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=po5LHGDJSGr9GFL2O0mJWTjRrukOwzjPJC24mgSXiRM=;
	b=kBRSsBLRyWwadAd+dDElYLNFmVGgl5B5sVRbTVWWc8lz98NgCjXTINbSalra1TFB
	uPiCC3ncwjE164SbwriZedVNXQy0Qxx+yvdst7LvvPZpyp2kwmANqAk4q4jXuXXdgi9
	RKfMsC//VlI/aY+bgxUybiB/zdew+bSw7StK68+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc90f01b3-eb3de8bc-62db-4fa6-a296-bf65a8b100d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cf4420d48726d54609ef2ee0eb6115aa3db4e90735dc48de8efb9b970181861
Date: Sun, 27 Mar 2022 01:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648345678
