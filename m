Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF397A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657481812;
	h=To:Subject:From:Message-Id:Date;
	bh=aXIgK4uu+fRIwyuwljLVPv5FrczLquAbapOe6hbHwSw=;
	b=WGMwOOaOFAJOb954xpJthoS58SYJ3Sx9js7IiL6S3s6eWorAASTKxpaAvydKW+p8
	YE7IRmFFzW8hlc/T8pulbI9W5265Cg0o423ghJIjBNXAEAJDMvguCeQHvLDBsfjn2gO
	81KCrpdCKRGNB0WLHqefvyX2rDBVLRCXT0CPyD3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657481812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aXIgK4uu+fRIwyuwljLVPv5FrczLquAbapOe6hbHwSw=;
	b=k3U44DMH2ZzJpuj8sNmypGOPt/nyU60d2LcgIlwQfyOzK1fUzwlC5w/cfKZpXx7c
	qASRGq3C4obQ43EZszwEpHkZzMNfcPcMFA8clEyJdJgeKnaNJHjDKu1+0XSpe612Dtp
	ck9XfD8NVPEwa5ttvLHVQaBCZ6bTJFSKoVZCXtEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e99d5969-7e7b98d7-c73f-49f2-b19a-bc417e6542ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f84deedc700c2f6f4f4d0ae51454f016b18087b26e7a961e3bcc5a63930b87e1
Date: Sun, 10 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657481812
