Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF4A10F2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 08:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92C4C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 08:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674808385;
	bh=TtvcENOcAChaE2HDkrLfN+YowBviaDLxrRuJujeLz0I=;
	h=To:Subject:From:Date:From;
	b=junwXKvvkwV4K4+EqyBPB02DgW1TUKt/vM+P1gk1AkAE29DZXXiFUZN4MWtu00xb9
	 JZN281pP+zyCuBkfr9Sc3xRKrp3/cVe4oaUo/+GtNt3ZJ2TzG6Bv8OyqnhZPo5thM/
	 m/wOEyfeVWkUh4iMABLUr5dId5/yIchWSu8N29w7VhSY/jOpHHDFpEslEOwTGYtlz5
	 Lf2K8CuRPdLN17atLyvePeMLy2z/0zIQkb8riGBYmMx02YFlrPE+RGcl5Ae/ofp1ur
	 O9CiYYYLHMt8qxKghXGf68AofQwoOqOgbexyYCRbhsTlS40Lpi3fFEwh8mPUVy0KyG
	 bsuIzJE+aS9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC618C61DA7
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 08:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167480838575.8940.5341250188254445395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b19dea24f4b31b5eb8e2a2745e73071d1198aa52513d652503d66739a846d6
Date: Fri, 27 Jan 2023 08:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674808385
