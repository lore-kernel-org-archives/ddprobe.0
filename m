Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F417184A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 08:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655194319;
	h=To:Subject:From:Message-Id:Date;
	bh=GrnrkOXL7MHtIub2q86lfsVt4O9PT/fZGtDSV8xNsDc=;
	b=WE6uvivgmajy8Im4BRFLcncZtxDG8G2niwdz8HVZM43GC/Zkn3MpX/MFjxaZ2INQ
	xcKjKnxQxq1IVflvLalW3uj8Px4qcLFU8kSvSNSGio2voRdd4SSO8fVliptkrN1YZF6
	3JHwjrz0s92gwpzTi42VXiclIb9ZOz+z6IreIBNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655194319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GrnrkOXL7MHtIub2q86lfsVt4O9PT/fZGtDSV8xNsDc=;
	b=XHcjMQ2QxLy4ym+Wt5Q5Y2XVvi7qPG/8ipf5+cSUpuwBfPfv6fruqoBWFTdjUjZA
	z1b248X+AFkpl294mq1fhSxozLk08w8GnxGy160TyHWXEfqCSkJxtlDfB4kNpBj5rFw
	xc63PaSVGN3aSmSkHo5sg/5ENqQkweGRaL3HTOQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816144f994-80c52479-24bd-4402-8836-b60cf04ad678-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 500971428f6c07ca63763960943e06f6ccfe9f72484a4062fdefc8cd9a057de9
Date: Tue, 14 Jun 2022 08:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655194319
