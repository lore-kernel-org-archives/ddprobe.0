Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5251A59B78
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714840943; cv=none; b=m5LAnWi+01dM72T0IRiby0PQid7gk6rZGnu79u4mZO6GZMECqjhsC75Fc4FSCmC1gLXQhX0mEtNrLLk8i6uHBOYPp981Pd9vxw/63FN/hzJQ165LLXl6tQqRS+w1Wz+Zwu80mrcOO4wAMyqSgoV0INaGZhJdF3J6W0sGTLELIRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714840943; c=relaxed/simple;
	bh=YOYK0WPyTXIyhAYshNKEp8JlhgZOAYRzjVquJ31ETlU=;
	h=To:Subject:From:Message-Id:Date; b=dhrc12WkiiDkBa9mYr+F1MVTihRUTWEius3a4fkQGQErTMcvVh9aGcg5Jv60sJ8jAZGaDEw+kQ42CMvhNTJBJ8g1+yuuDcmaHwKNHhU2MPin3gQxSdBqw/5+sRfb6LM57Q80CKACo+KvsnUmOmOkZdsn5s3L4XmgsYuqTtID7ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCTW4yTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCTW4yTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A56C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714840942;
	bh=YOYK0WPyTXIyhAYshNKEp8JlhgZOAYRzjVquJ31ETlU=;
	h=To:Subject:From:Date:From;
	b=tCTW4yTJ+KJP1xCH7fq+dZd2BajHQ+31t1vKQq2qzs8usxylNvrbJZthbNyhcnQce
	 oDXIqUYodgX0wbpBGFH/3wRL6qJOb+jxDBm59VkQLeMQBBXV+03A8FB0qjfcdVqjXR
	 Mk3skjuJniVGhSgqJWYKEeweQWVIRlzMxbsTOvrAyQMr0SZ08Q7XNQC+8Zvrfe8kEZ
	 BlirzSFCJ7UXk03+SNPsy6Luho5yyZEBX09RJAQvdB9H2eYKXMCMFW3v9h6CLnchB7
	 Q5iFy6sYepHm1/+3bZJpKuF4QuZOkRMUCnvb5KWUQMibgE/nzwOSYFzKDkRPOggiwB
	 a3XtcSHa/NjJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BA9C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484094278.6690.852043071160221414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c575133ae252307f9a65617f204d3291429d9292b88bd241c10e04ee1feb032
Date: Sat, 04 May 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714840942
