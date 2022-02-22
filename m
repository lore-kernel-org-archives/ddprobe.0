Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4D2625
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 05:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645508785;
	h=To:Subject:From:Message-Id:Date;
	bh=1X5yWqOqS9ftpyB5Ide26Yi1sY84s16hGsuLahtRWIc=;
	b=Us6QRs6qUXKEw5ZUj+ubHqVTJzL2km8qXc/OUxAmvF+ruIjrOv6rd/k35x+XlNPL
	rXqEzV3/oakC584N7a/nb93DmZPNkLyrua4oo06O3aSbXuN0/4hbrrNuY/4J1YErDF8
	QLZu+sAzjHpZaE1BXmYyG3VDWV35qXjrOIgr2vlg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645508785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1X5yWqOqS9ftpyB5Ide26Yi1sY84s16hGsuLahtRWIc=;
	b=SaZRXkquiYXiewKmcPbHlvDle3bLPhyJxrsc9wsYpSReHoU5/a6NORlOoHql5h/4
	Cw12styvIUF2ygU2lgCqIWDkjzTSzGnunn6zK9yZIWOwpl2Hb3ydEuKbIXaEfFAeKHG
	ZJRX4xWcbz3XOrUBv0LKTxFOwy6+gpMTCRBb/HqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ff77278-e55a7396-aba3-4ca3-b856-e0d5882d9436-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c702521b94e2dde49ad0bb3311712c5172fe4e961f25e55e5dcfa97b6a0eeb3d
Date: Tue, 22 Feb 2022 05:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645508784
