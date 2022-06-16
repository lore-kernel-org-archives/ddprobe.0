Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2182F17D5
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 14:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655391239;
	h=To:Subject:From:Message-Id:Date;
	bh=Ku9tFWGfWY63VNGVDIRHw1zVR+UMv76Cu0CYk5fDzjo=;
	b=A0ekTrIPU2hQawFNGYX199enYAfh+8KlM53bQeOxMlHL1DIb4VXVRt7ApXXUXdz5
	25W9zUgHn0P7/c53lAudc/MZjxH8R/cx0cTj1RJfPx4VPavbcYRYyqUjN2DIeVmkt+P
	bgP+uJACTeDDowwFZUQSWrc0A5Zkkx/CyX8w2DDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655391239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ku9tFWGfWY63VNGVDIRHw1zVR+UMv76Cu0CYk5fDzjo=;
	b=Iz6fDTC6HID6oPKfe4BprSiFCgA+aBPJjNEtU6VQRdhG3YQaxPsUldyffz0K0i/m
	Yn+8ohPgZQYo513lqyZ+EhPCeIrnul3UIGHPfPJYOFUEvCSs9JK3/Cz9B++MUNbrY/M
	XHF8qm8uWpjvihbPILBaVLtsheHVJ4TiRewhRmFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816d01bc73-0b78a1a5-da31-4096-90b2-6f376738d2a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d8f1d63d1c1e96de22e85c54f245c90c106c5cfb42e32c5cd2c2c5b11133cbe
Date: Thu, 16 Jun 2022 14:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655391239
