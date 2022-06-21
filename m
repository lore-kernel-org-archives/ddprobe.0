Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30717747E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 18:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655835779;
	h=To:Subject:From:Message-Id:Date;
	bh=WT9HDYzYm/n8wgoRESDvTDi2sEaJPneNWIvMKOQaOdw=;
	b=gbHCJ34dkM8GtB2M3KL6yP6GKydMg0MspHdiR3k0MFy2v01kZBzA0SdhjINjbFFi
	xCsOfT/XfZFj/vJCIecxOsb1BQORNi02C0nsN4BvFDF9fL9v4SnmWAfCrNY+x5eFf4/
	BmxMGHus5i9V51E12LUgbsxjPK3vsN3y1xCPkUYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655835779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WT9HDYzYm/n8wgoRESDvTDi2sEaJPneNWIvMKOQaOdw=;
	b=g1A/AoUGyxN7yX6x4uusRlXFhsMaU/0OXBpgfbK5SNX6koabV20IqzjORtYhkOx3
	Q8x9j2/ZUngLStEDnTrx7Hc5ZbbeHmaF+ud4ErfoP3DzNuQhfO9rO58BA3uNMtauwmB
	OGGwVhqzrg6y0BsbA5M5xENAtxs9Ehux5LywVGjA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818780e09f-c86f5abf-792d-4fc2-b6e7-057c5ae2489e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 110d4f2bdcf73430219221238f5e3fbbbad9d61946b8de8500495a78c67db6c4
Date: Tue, 21 Jun 2022 18:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655835779
