Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434F920E0
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 01:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649294398;
	h=To:Subject:From:Message-Id:Date;
	bh=ZfXw4MWDZYw1RdJ0mXF7w5vv1fcc35MJQou8PxZgpSE=;
	b=gHUGClKtI4yNj6PcrbgHYZNG+nvjkk9lN5uexe+vEZvmPS6YKjsRWmmQFy9JXCEx
	n3x80bVwMPiSIXlH8ls1IwKQWgY2zCW7rnAZfVsqWUa6YhimHDzF8Pj3Ht1/RS6/7pv
	ZJ2gHACPK0X6f5xtAkNqQ4SWBc1a9RT5q0N+Gv0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649294398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZfXw4MWDZYw1RdJ0mXF7w5vv1fcc35MJQou8PxZgpSE=;
	b=ew77uxRYL7PET0Kz+TEqyiteIkaT+PZ+fPvlu3iHwla5wsw5Q1jLvY/2Y9C+yOVX
	9Ryn9yI4lcGup6xLEoqztroj21qxv+xXKDbdwV1d9xjZwKtoZBz5D7VRG3KLCmX4Jx/
	icQm2RH5xguSjCN0OHJHiIOcqPK0TXzKpd+PpRzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180019b53b7-f9dae599-5490-4c05-96fc-b53346d6ba05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6131794e9b405c591b44495170073c1bec2b15d93663d16cde8d8ea0547e4ccb
Date: Thu, 7 Apr 2022 01:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649294398
