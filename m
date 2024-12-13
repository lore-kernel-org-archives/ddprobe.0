Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EA86FC3
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734123354; cv=none; b=B7Y4NMlPSynFPxB3Bddiw2sbqmncyYLpChwJudMLmy4n/gOhLoQfHQWLpAEVxCPCL0YxUTUFfugDdZa5NJnhB8z3p9SQHuXMfh/QCzvVrAo2detShNd6NyUHTko+b17DQ8ica3VPfiiMeDthbG3q3zrD+dM42Lqpzm699xY15WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734123354; c=relaxed/simple;
	bh=gJ3xs2uY5fz2MfSdnvVBTJsOtQ3O2CguETgTPX9KUtM=;
	h=To:Subject:From:Message-Id:Date; b=GxfWM5Q+XXRoV3gtWtBGeGdgEU1cFo0kSyKmCcQKHkyp32oWOUkuApiNjYQ9V8Lx0dJxy/0ou8k06/zKb97exW/JYtPIqg/IZXQUgWhfrdAnD0rZZ0fChtHUS/j3aTvwb3snrq5ntNpmPQcpGUuGyBuV0ZdXGeFTYA7kd3RlSQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUzVkgTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUzVkgTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48C2C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734123353;
	bh=gJ3xs2uY5fz2MfSdnvVBTJsOtQ3O2CguETgTPX9KUtM=;
	h=To:Subject:From:Date:From;
	b=DUzVkgTJTrwu4/ug7evzB3WMT6Q06S9s01l8Z2ovPyKjW/pU7Emh2EDnFyPfSKU8r
	 +5klX+2gS3u2JNmoRJrQFgKpWjJhehYw0lLAZZh60/mg98csLuFTXP70/KL8nNkJCk
	 5lL42oPrESOPYttfsqXeD1Z696VuZUxPZVV38EgMEMlESWjzmwN0/GYigxkMweP4oD
	 5sNzTNGbiqSILZxlti7+IP9EzjNDUztolTbfq4S20mj8njGRA1psryyRy3WtfdR0XR
	 zf9VjYAM6SXu1C+4Mr4w1Q/hopwbqBndvk6jOlHKvGmbtW0tUwFHM/tiz7egm+lwe2
	 9SdfGRxLbEjWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF22E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173412335360.7543.17518456776288782470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46fa302e103d1fa85b97001ee4ef10c1084917b29ccb25d622562f5626901d2e
Date: Fri, 13 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734123353
