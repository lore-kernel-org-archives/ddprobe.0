Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055F31108
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657438012;
	h=To:Subject:From:Message-Id:Date;
	bh=AtS4oAgk0CMqWy455rJcMx7IdwbTDGNkohFS/vP+WzQ=;
	b=hRjrNAlUfed3jCKEMGse30jeUYy0BTCGQIzQ329vhPL0TBJQAY5qMWCIesZNoxeQ
	kf8V+cNbByFDcCM9Yk0tXb5dsHhILgDbnTyqjz3PRngu7mJ7aOG7KWZCMj1ANnisICC
	1edQ5imC/ClNBYY6NRT2u/HwqDRE30LmmgirDShA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657438012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AtS4oAgk0CMqWy455rJcMx7IdwbTDGNkohFS/vP+WzQ=;
	b=iJxbOrXCFXq1q0J4wWEj1HLhqqvw5+WOdIv4ZQvDeVGGmJGIjdZmElVdjWDGobv4
	cLRWp9S3G+J1w77GhU2RbdaXIXzCIv6Ircx49GJzqOJfj7f+bvcXJgxTZ94YOp93D4D
	pyQM1/HxSsNSCCEX76cjPjLhRjGg0O5OwezNGqCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e7010377-9c87bcdf-d203-49f4-913e-41c3d2a14daf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83605fc142d3e494d7c1f74afed35824e6a8db3e2029928e968610fe9b821041
Date: Sun, 10 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657438012
