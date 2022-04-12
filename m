Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0E21FA6
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 12:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649765098;
	h=To:Subject:From:Message-Id:Date;
	bh=NLwP7t6PXgWLubPKR2DLQ1FArLaBhM4MWh+/luwlnrA=;
	b=hwuMox9c4LNb3S+3smudhekWDQzmZNivkgQ5wLV9vcWu9nOkkgwN4j/pgjrw4wEr
	zMJAFqNkTkHJttkIvcwfWiUqgLQymyIM8B5FXYcOnUg7ChcxBjotvK42SNdrKegt3hK
	1IiCYxMCPdmfW6wztJXUnsicKNVdG6FRszUArSgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649765098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NLwP7t6PXgWLubPKR2DLQ1FArLaBhM4MWh+/luwlnrA=;
	b=Qh+lcbYTNo1Qgy2OwwcMPDpeAFMvdEqhXF97pjAmkt0esHrbKiJiAi5xcL/Azn5A
	2Xr8W3+7Y17LWz4KDHVcSA1XFL5KKtieZCwbUeX9qfx94NyJno1xi21jlhFhbILk8UW
	4bxLal3ycE0WB9zO4tIiYf/oYYG/C/vp9Gn257ps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801da9a31e-1d2b11c1-9c37-4415-99c7-4d5c8da68b8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80c117cf1cf83ec341120e215c98e5e143dcd4092faceeae2f570741ba1ae214
Date: Tue, 12 Apr 2022 12:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649765098
