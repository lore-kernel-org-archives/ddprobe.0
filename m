Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344371852
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 09:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654422359;
	h=To:Subject:From:Message-Id:Date;
	bh=0YptJeeG1ZEkO1/GGZyLC2mi1pg0QWUOnsTDgbNX7eQ=;
	b=kxdvduSTQuiskUYHe1+B4hFrd99is8FAbTmQAownTKLUS3DMcub3JNCDoqnLjxYu
	FP/aQwVf14S/ZPCK+TvSPJDL3h46Us+aIgu94b4hF7OkiWYdSIa1+NbSwKBuCyTcZcV
	ncI53NCCJ9O+dlh5BXjZEzYCCbpIbH7jFInPXZbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654422359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0YptJeeG1ZEkO1/GGZyLC2mi1pg0QWUOnsTDgbNX7eQ=;
	b=S7m1S0AhH/Emmq9DnqJLqPNKVTb8lmeOL7j++70N2bLNG//DEdtD2Oy+Svlwc+Ii
	KeMRjwBuwZ7yxoQVCPSHGlQzt1neRvujbTMWBV4/s1xNQ3kO02s/Wf+iNWSZuWtd4t8
	/BcaYyFgW0TqukvA4SmVFgj2J/eOj6zynwOLf7is=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813341ccd9-eb0fa9f4-17f9-43a8-a511-6c9c48363d1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b82578a25a83b64af83eec825f256c0e63f007a428296503610c0d7ec90675be
Date: Sun, 5 Jun 2022 09:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654422359
