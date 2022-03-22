Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371E2802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647930384;
	h=To:Subject:From:Message-Id:Date;
	bh=gOBM9YV16Qhevar2bqWqGlON5ezRABgpG+j/ZwAHKvc=;
	b=NVrOZzL1cRRrNnW6d6dA35pKNgvJ2aDvxomvBFZR7seY9CpcxeX/aXrk3ANlybNq
	619Qi1A7+zXZiXHBF2uPg7jRguPhVWedQu95WwG4pDC7nwL5cEqeh+XUmoj+wzCpvAB
	OYKsOGNe4yatxg3g1un/TKG7ZJXy3spp3eqBFBEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647930384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gOBM9YV16Qhevar2bqWqGlON5ezRABgpG+j/ZwAHKvc=;
	b=cRLIn6Lz1v/BENbN2Sp9UUuplzCQee0+wH26D1luEU+Il9n0mNoQsBz/fNJrwkb3
	z7SOP2UWP8sB3EaAJqajpFtmsNu8bKqrCN7y3C7Z6Y4PzdmqxRF1X1WsVfvJkIEy7tw
	OPQ0Lpd4+QEZD4ub/3fupecIA4Fv+hWW8LI1OpfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb04e2141-d066b6c7-e7cc-493c-b56d-3128bd69e8ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bed493ed06217ff4a37ae0b96c52893c451f2784ed3766e82189d3c8cb065f45
Date: Tue, 22 Mar 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647930384
