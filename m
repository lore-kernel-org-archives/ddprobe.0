Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708641869
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659795652;
	h=To:Subject:From:Message-Id:Date;
	bh=b43mdGv/y7z54GsFOgzYA9jIcTrPzbAMy2+rn+3eH+4=;
	b=J9YUbXZpkV8ITtK3I/cUlw39/SMJcmadoRgsBMDJLJRm+wZI1aSVAm1QcGw8ZTc+
	JsdSNgwC3Lyd/2o+wPDL+OAoCHBBfvY6LYcU7HabC4Aji4M7CVYDcsUYT/ffVGuDaaT
	oYlb3T2OgWDErUMUBnXMVPAx7sYpk3GoqZ0yNBkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659795652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b43mdGv/y7z54GsFOgzYA9jIcTrPzbAMy2+rn+3eH+4=;
	b=f5v+9/N0zxdV4O+VI72W+KLeDuc+bhU3uRKqA2PO2s4gR9vd9QdkEiEPGUQaBPxe
	DHe1zijpEOG/6OiaI+q2VP3eYPcQiwQHz0ex+S1Htvixo674X4pVk1ykGEp8SDcxJuJ
	JdYJQC1nX7AWTLryKJb+3U/76UYnuXEJRYjTz5l8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827387bfe5-1fe4b3e9-9767-4689-86e9-d2dcf599cf3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c12036dce49f200f5f23c02af719e8fad013e16780b5ab984e20e291110b088c
Date: Sat, 6 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659795652
