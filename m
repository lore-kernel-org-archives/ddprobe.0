Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05065184D
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 15:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652023498;
	h=To:Subject:From:Message-Id:Date;
	bh=EfBfd8ltunGB4iovRFNROnkbwtH/YzyIXCYIZMsKAC4=;
	b=Cv9/cME8YTWtPCsbpsniVkbye2IvWySVFynvdH1uzIBtIV2HkoLWKt4WfMK9M2KC
	YnWWa8QIU7m/eBE7vypcWznLhwYmXdpHl75c1NZoe4GEUfu8JlBdr9Rkv4Ug/hLEIo1
	u0GPlhrvMGKESz+Q25E3sJ8g1tvhaivrlfyvnwcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652023498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EfBfd8ltunGB4iovRFNROnkbwtH/YzyIXCYIZMsKAC4=;
	b=SYXXiA3u3yOkOPLnSZk6HVq0OmPOV1kjaKJCQXEwwgcopGi636JJ3I95bFNntzcy
	vgnuotDqtSvuNMsFFQ07bTWLBRhJZszeJJeQU+RXSK4rnKOv00Cb2w/kgoo+e8Xdrop
	Ocv0kIRowVzWvRh+3GhvxvVFvWJ7YDekQnbjQaQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a4461613-c6726ea1-9054-47a5-88ff-a834bbc373a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4aa1acdac1676ab23c097b08a38ed4848d642c1d9ea72cfaf7f493e63bb9e2c5
Date: Sun, 8 May 2022 15:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652023498
