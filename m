Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E3E7A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 18:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657478812;
	h=To:Subject:From:Message-Id:Date;
	bh=6GpQFXGpxJV4TyUXDzckP5y98/ReRpfp4+T093DCX5U=;
	b=cLHQtjSlYRanRZqFcj1rYdwKuzu1JNcaRUUvQ3nrfpZGrThVM5fX3GEWWl6bqOKY
	0k1Qy1yFR8JqDWI9XzuRHWplbj4y4V4SXs8QDAd1MuDUBCxVoOP7Ydnjo8y7noWBmnE
	I/qiW/3/IPN86uNpp5sSKx2PJQ3GV8YsFHplhgJU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657478812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6GpQFXGpxJV4TyUXDzckP5y98/ReRpfp4+T093DCX5U=;
	b=cygCdDUXr7m0PEHVilMJfOEL/EZkqiNjT/rHz+6P/OJPqASKyWdp7wW1wcAoQTJF
	ef+GDpJPbBl01+tj/pPXgbnbnTrMIdjctS/mfYzM5mRDb7er38C444PU271O1Wmp3pa
	Tu/O1gEwXfGYNZv6Y1fsf84/dJb6AS/TWQzSTunI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e96f9281-3c21c91d-2f5c-492c-88cb-f61fa02da5f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfd05b50ee3dc8c93bc910f4d1b7d1205088938c062ada78fdfcdd4a289f5677
Date: Sun, 10 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657478812
