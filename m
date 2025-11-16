Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173C33B1B3
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763270454; cv=none; b=c9qtns0o/Sb4WwQps8+zNYLtwRq9SMEx9K41jRcmlJbH+72EG7k8pp/uJSK5tlUN+iniS4Jon8CTmy05i1oJAZUGoqPlPEkyl7musRn4bz+gDg/J0UtSe0fMakS895QATkxJnZvlx1+2fhuxRNOTz1DizBRMEfx7mRR8KDIeTzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763270454; c=relaxed/simple;
	bh=bcjwKZZmjHu//iJId1V/MqLDWxAGUTJpSM0MS5cT1Bg=;
	h=To:Subject:From:Message-Id:Date; b=P0cVj8Tv2iOHig8RHHf2+6arJXyGxXtH2HKGr+cCxP3xfpvudUnrUKItKa6+dxVAPxsamZTuqEqdszxowgJIdlNq+pQ2V6d09D4zVA+zXGLozJ3JNbU6m7RGdBwmobIirQaxowV2gQs8yXyWkjib9n4uqQrwMi8bDNuZqGEArDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCj3LliP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCj3LliP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3492C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763270453;
	bh=bcjwKZZmjHu//iJId1V/MqLDWxAGUTJpSM0MS5cT1Bg=;
	h=To:Subject:From:Date:From;
	b=JCj3LliPvjCLfNTI2U5KtLnHJ2sHfY8UYW9ek8A9PXKiocilkHPTfUi3mqDU5JakK
	 St4ciAa+j8YfdFOYy96UTNpo08l+Cd7BfIw1IFCpKf5yO9IYhEz3+T1X/dxG/z5i/b
	 RjWB/qtt+rOF0ejlht9TM8DkJLY5NE/2y38O6rdL56khQUSnCuGpsXtWAA5Oto6Zt0
	 sqbDF/VjOoLdBSNxOOpkwDH6DmEeHrX4XXtra/UrZB5y1456gGAq+XnH91trgCskjE
	 TNCCtFHwo05JqC8dNHSQcgLwXKPF2o+W0QQ2+6A513VmxNLXCG8xlm3k6uuJyHVjbi
	 MJGcSWohakxOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C28CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327045358.4343.15054728075837710465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a728a2d0a67b440420e201e38c829cf937db586408ecbb038807b838b5858f6
Date: Sun, 16 Nov 2025 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763270453
