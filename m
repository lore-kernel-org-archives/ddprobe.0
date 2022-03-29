Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D307C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 03:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648525678;
	h=To:Subject:From:Message-Id:Date;
	bh=vL7rlq4Rd0+rqvDtbQ3GhWn5toSVyL1w8loqVwAdxXA=;
	b=bwoJ//XTtmBu8+TkHEGF2Hz0kAzyTkFCBHRkYQAod4WkU67k4NSicXV1YmBG7IJ+
	kMNgYKBy2oiREF6705O2jF5jxTc/SvSyfBSxZn3SN0WPU1WCHK9UVBjkC/E0axUsSSV
	u52Ko2lb5sIGRDO2d8dBqlMsXjIpNjw1vc9OEjH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648525678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vL7rlq4Rd0+rqvDtbQ3GhWn5toSVyL1w8loqVwAdxXA=;
	b=gyhCFLMONJt8BIZ6CaCRm/upCs0msnz5s6/p/++uopI0OOBXn2cIuXMJ0xSYTsvk
	0cw5tw/0q4yd/KAN/lXles/TgAoRNl4ZXceTCzUJiWG61RlfsA+GuY/Mlz8BVKzWRT/
	+ZvqaUJSATCIHHVwjF2tu3OUPfikyDhIC0k0xaMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd3c996a2-95099358-4fbd-43ca-8670-8cf272558479-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62122d350fe265427001fd5c72f754fb8ecd174f1729bdfce984fec67f2b59f8
Date: Tue, 29 Mar 2022 03:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648525678
