Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20831485CDA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788282634; cv=none; b=pHicdXo4/5r4B+3rbfWJv0ap4WDs22IlZmMXU5Vvt1pMe7clLZr6rUOpHi5nNr3l4eMyHqtoK26FA6jlj3SLHuAQnRVwKf7L2G40LoUVINrIZ3ioPRvRhNIeN4l5VjU3S1ZRI+hStL9jhTJ49eOvJjwi+dWihftL/i+oYbSXgbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788282634; c=relaxed/simple;
	bh=Mh2Q4PxWH0BdN5aO+6IiydUuYlaE1KSa6v/lBBOYd60=;
	h=To:Subject:From:Message-Id:Date; b=oYucQ8/m2FdiofbqLUikplGVZ03grJCyBzIGcIjr8hTh8O2YqaB8Y6S3LIQV1bJ44104CQ/cH3S/CBmNaWNrlb77HnxEh19Kc0gBpUPDFlzyqB8W/8+JrfzDey7l/tbVC7JOIRh/kmDZqzGLQ9BmGamvngZVq1K8W1toCD/TTCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxcMlAFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxcMlAFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF598C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788282633;
	bh=Mh2Q4PxWH0BdN5aO+6IiydUuYlaE1KSa6v/lBBOYd60=;
	h=To:Subject:From:Date:From;
	b=cxcMlAFVcVTCL0lG68XzBKaPB45clB+7kNMZwLJ9yilBSUKg/2jSO3D6EqOw1Ak6o
	 MBxszrMzS2qjIyAALOckQZY7FraOUIak23ekdj8UmdPuuWhi+zMsBi1XNq5yEfUq6H
	 ce3oN6w6sIsOzd+myJlXoQS1/fmjcpuSwiLFSONvlUrocx7SCytnPoQ6Ld1yWngx6b
	 xChha+PeyYDpMnb05DxWKF3RNLOd/cmRhr/uX5nw88wEWVDdDrFl85lZ6+4+E7yab+
	 UbAOASPEFDFVSS8Q3tHr92BZfhRZK08zwnfqJ2NQoBpE027Dk1rRUo+t0HvOrjM86X
	 +NN+gaXXf/1xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB24C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828263369.3105.8896818318846709151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00ad37130ca153da706781fdcf203127a840f82573259326866220b619d00e3
Date: Tue, 01 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788282633
