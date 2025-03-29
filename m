Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E3D29A1
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743244794; cv=none; b=udS01jdPzDNWizsh4h3x1lEn6HEnoOed85mqtw9PiQVOyDgtSupL8JlHdxItCGLk+KmyMJdv2Q3KUMq/GcrM89BgInetgjZBLQ/lsV2FvK8QCkYuYvavroILgO3x86q4NkWjWRJSMgMIaWgWFFYEPtUjrzQbIc1EnzMONIavRy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743244794; c=relaxed/simple;
	bh=8mf4orV8Bn8WV+IRYG7gR3yvxb4fRnUKYJg5FOaRDk0=;
	h=To:Subject:From:Message-Id:Date; b=r+vrMX+B8Uzj4f2+B3eBfMy3Ag94j4hmDPkVj1DL2Btr2tkQHg1/B6YHFB8uftePFY08+ov7vNKCdJvuG507N92VHWj+5OqAkvCTHPDynWRedDjkSQCoz8gyqeiERpP4HMEhgj7Xdl+hycoY0E/IG+NyASWs6+/FeckcRAr4ZJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrDoXi4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrDoXi4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BA2C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743244793;
	bh=8mf4orV8Bn8WV+IRYG7gR3yvxb4fRnUKYJg5FOaRDk0=;
	h=To:Subject:From:Date:From;
	b=UrDoXi4Ny3QhO3gTkAEIR83tS2f4NMd00To0A+2fDMWrPWVtP2Xd9Xi6dOLg071XF
	 u+UEKdcdPjLzNScjZJz9lrueKMB0lNdhpsXa/6qdY3vunTOoo5HT/8PmKkZWflTma5
	 vUObLTrkOLW/CW2uOLKGgMuddtfmGcj8cBcFRF3lL6pRnHe2THQ4JU3IIipOA/kkjb
	 i9P8kaohHzuLTYZqjQxmkyTbbL6K6oRH4marqlAoAUw96ptRzeUwsHJXzdIkNodQMw
	 fnFpoAB3yy5OD1LLe++qNxSzh0b0jS4xmI1I4CH1wAocIK15XuZn3F962tu5B8ALSL
	 Jmo50OJkNW8aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B5C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324479364.20394.17814439479613114253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5644b22c9adaa0f61d068640c29137c100700ea9925715bb41eb0d2f7239c5ef
Date: Sat, 29 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743244793
