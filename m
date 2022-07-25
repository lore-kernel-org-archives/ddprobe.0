Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389341844
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658761612;
	h=To:Subject:From:Message-Id:Date;
	bh=qdVR8QoHH8gFNAY57qROMYux6hSurR5fOFwyObEPPRc=;
	b=fQV7ObenwlMiw8ln+SLHpBZoi7+FpnIG12y7fhbwDCqIkkvEOxlwgP1qaLrTzbZ7
	9KWaFzULY3tspVSbvRidMqS1N/w5Ly2Aad/QTbnaMw/S4a+04Rd8Xsiv2fkp2/roRcX
	zUUVKnKHFs5F0G8Wziw4g8SxQlvvsybNndeGRBU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658761612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qdVR8QoHH8gFNAY57qROMYux6hSurR5fOFwyObEPPRc=;
	b=WK7hvKIFq+/XkOG3C/kCF69XJeAcfju3UuVjrl3V/YclXXcIyQW8BLxR6PNFOqXm
	hI4boeUf8Mgjbpn3TQLNq7+byiLm9bNpc9eO2ePARLkWEEuqN7488cyPyhxRc/cHTwq
	f7RnvnvMHw9f2yzYAEN5SKXKFhJ6O+IcwJ1gZnwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018235e58c07-2bce40e6-aeb1-4e1b-899d-6092bd8f0f8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c89f3e4fc72c7b7abca62970ded521d51af3bb3d7b57cbc2fd6306356112f9fd
Date: Mon, 25 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658761612
