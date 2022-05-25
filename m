Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038181368
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 16:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653497819;
	h=To:Subject:From:Message-Id:Date;
	bh=lGHtJ5p8OlWEg7HMtDch/y83+65t1MZzg3D+28MwbLQ=;
	b=GNjpGC1GRJ62fOwyux0r8JhUxQpLC9uvamR5ACFmaVIJ1sBSfUgjQsd//ix+8TR3
	ZhCc0LfZaW+wQPbrfxS9o0U4wW+Nf+UIJimXxC062MFITxYB1lRhD8ilkvnM9CiBPrG
	b7886ADCmEXISlyYhhP0v/fw/kb/Wo06Goos9XV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653497819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lGHtJ5p8OlWEg7HMtDch/y83+65t1MZzg3D+28MwbLQ=;
	b=IGT55aU+XkMIcRxU2VfLWOppewzS8IgqXEHjs/7+oXCO8x9SJhjTe95Eqgm7K4ql
	QHRud6dODbYlAFzZIFpBSsX7UcPxvvPwGD7RhrrgWQImn2Jzf80epUK7Os+ZR6GtuGL
	+/Xo12mtoRtPUaGnXhJEaIulqyCKe0tzpU233tVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fc267088-5b66d796-1db9-4dfb-95ac-6e91420ca5a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2287776da001c7e3c66c5108588223f52afbea6c82267b2dbcb435b292fba360
Date: Wed, 25 May 2022 16:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653497819
