Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7972A23AA
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657594612;
	h=To:Subject:From:Message-Id:Date;
	bh=CYC0vbQ96zOmPf56A4yRtRHMEjoyaerJe5r5frioMO8=;
	b=UQuxI9U76aHxMMBbNTAwzZrv/L3gjojqBbYuztWJxPsca3ucvYxtWmsp8D93gh4d
	Gh4IGKHY/3Vz0MS1AQ4mTKYNPeXaLTWen/QLESN6gHx5lnurmMKLnYvKGtSByftYWHM
	0B6Y8muMak7TrA0gBmnZWgs6gjWtvzyX1qNqKR80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657594612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CYC0vbQ96zOmPf56A4yRtRHMEjoyaerJe5r5frioMO8=;
	b=eqmLKvZZl13UlX56n338Fh3PBESVVI5epjsfJclZqRtkGPm6wJv5J7dZD6gevyfZ
	GFZo6mKwd493jVL/77ZQwTWUDxCAc2smMpFXO8J4VRrFmyLlY2HTPJtP4ZieMf2R419
	xlvCjSOjsWJUiBCI8z28XR64jW2ZP93PCdicAHuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f0568a26-adb3890c-661d-4818-84d9-a64309a63193-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3265e5bb46462cae2665369b27073004f96f78d07127343db4014f846a18063
Date: Tue, 12 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657594612
