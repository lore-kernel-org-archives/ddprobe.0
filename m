Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7837A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647251485;
	h=To:Subject:From:Message-Id:Date;
	bh=v54YkYxVsvir5bobliQreMp22kDer4NhYdpCp3Gi6QE=;
	b=MH+XmmgrbG1NX22U9hPT5bv010JY6hMRJndGDilFOuBO6xzr7vPkKospoK4DDxmy
	7P8gisSE7DaJjaCg5PNHZCImHhhmGJQE3pP186rOyEDHm2pE6I8JhmF4WWIw5qgg5Td
	Ke2vaJlJM9kV9YAcXdOVlQFtPIUCkeAN80by1+IY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647251485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v54YkYxVsvir5bobliQreMp22kDer4NhYdpCp3Gi6QE=;
	b=OIdf8EgxRd7iIlz2A07Ae/lbDdxrtcAv3LQWWrTPOnpUPTyPx623TOcFVJniSR4m
	bwLWkCYa4227l7GF2dNX3QmD26BT6NzbcmAHmKM8BhnJ1HsmhXuWWpTP/YdRpg6hWGO
	x+a9dn3JVK/1caIV7xiF/pxhM0xfO8DIj0yv61s4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87d6f011-66fa132d-f637-48ed-9a98-c5a6eee2c4fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89aba22deb33955f12694bfde04610cf58d5be948c63a0a09d4258cd0ad82898
Date: Mon, 14 Mar 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647251484
