Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA2010E0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 15:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655046779;
	h=To:Subject:From:Message-Id:Date;
	bh=hYgklhByxPt+88KZYfEu80kqQoQos8qUuO6zeJaO+DE=;
	b=TS8GuXv2aJ+yTNLHFZ/Wrz27ViW8ft8EVfO00bVKzzOM7CCXsxHuMgwqk0Ae+NHb
	pAj4FGZkMm/1EhoTdCcS2V/kWyDr1s/EKHVu12ek5iE1hh9JI6CIE+n1Y1alxkxLy/M
	vjd0gIAmDK0vqTDs+NbMJFu1jALlVMo1Duo3hO04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655046779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hYgklhByxPt+88KZYfEu80kqQoQos8qUuO6zeJaO+DE=;
	b=ZAFDytD/FmVZQljqRSnnIkx3lEXuhPUz1kH+TvuX7eDfMWU9sLbNAFBzAwFEksTG
	f0CkggwE8LYPj5n0Fr3zk4D5AZIJk07lPme20P6iR2n5wd3DI1ngZ3JsRuFLtQvhWCn
	/oqACFFlyZm/awi0NjHGrAwDordd2L/4fPABfqKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815879b171-3e27328d-05d7-44a9-b378-89672b7135d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e014c3ed670f64ae9eb5c772b14ead589ded2168a109d64f44a224462b4959c5
Date: Sun, 12 Jun 2022 15:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655046779
