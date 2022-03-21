Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C66A362
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647822084;
	h=To:Subject:From:Message-Id:Date;
	bh=YQSLsRw+BF/6+U7kDnh6pq5lloFLii3tjyErFa+wnKg=;
	b=Of/kRWMOWpK8B/B/B/bXBzK1BsCH03EVymJl1aaOLoL+KMJNsyezjKW7140Q2jap
	6pTVFIZUjzeQQR+88UMISusbSfiAfL7eSXx8xU2R5wlNXlmy5h+eQQc9a3r8dxTPD1j
	jifz+/olivJntULEEMwBNba//X0L+AgyXPUxKyI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647822084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YQSLsRw+BF/6+U7kDnh6pq5lloFLii3tjyErFa+wnKg=;
	b=D+rYsmnDLARxiri75XEQLBpz2AXM4Ol1otRog+2FUWoiJm+g9ejVP2X/oEjQU5Qz
	EF2CXEoIxBkiDBIKUV3bu6Oc4B1F6F6yRFwTI041sXcCeQu8oBZTKR2cby0vFVxrNwO
	zJRZYRljC5rqjt/6616cj+KX/H7tkuLweZVuNj9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9d99aaf-e6f83a64-62e4-46f1-bf7b-6ed7ab6ec6de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa6a4975229cac2e9410bc484c0f2d46a21880fd9c259bdedb61762270430c1e
Date: Mon, 21 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647822084
