Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383557F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 17:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654621859;
	h=To:Subject:From:Message-Id:Date;
	bh=g1MrZXgnOMRxJaAPnvOa0ZnegeqHfS/Q5LeR5l0Yanc=;
	b=LLQ6nyr5QRtmvXmjygXQG3bCS0Z3bK6LldSp7hy984ny6GnKsfXpvA8qEeYPz8ik
	8v45nq8tLmpaG8IXoVoenG6Asw1Rsyuza5xhZ6r5PlyOsBHm0blVguMom02mM4B66XD
	ZBPdyULtgQ2iAqFnjgU4w/KnddeN6ze687ep1ZUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654621859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g1MrZXgnOMRxJaAPnvOa0ZnegeqHfS/Q5LeR5l0Yanc=;
	b=DM49bSvRTsx6z/mlIinpU61U2vAZXoGPmfdWH3w/KQU3S9mxLAZ/TVeVFzrnq+sy
	DkSeifRyfCCHaqbaEPruzTOBME3tCr57Ug+0Ho650vMe4XwbABqo/MnOGaX5DUslAYU
	LBd3VidHNy+Xsllimb9F8JWDj5A30FDFa9BVz48A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f25edd8-cfbfe6e0-7ca3-468c-9334-8b7e189553f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b39632ffd1e9752b44f6c10f50fb1301273dbdbf9b6b1cf168cff574c8b30e3f
Date: Tue, 7 Jun 2022 17:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654621859
