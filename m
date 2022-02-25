Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A227B7B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645776385;
	h=To:Subject:From:Message-Id:Date;
	bh=4/wOAxPSgAyfTJz1gf6Me2+zNf3sydP3FLCOhIHAsxU=;
	b=RbSmGdnFgqDhIQk8H7fLWYxtoo1dtqi/fAif5Yu5XKQ3dzJM//DPR8puws9w1RDU
	/sdD0gXuAvqUkfiVm309OV3Rz8dtKPPNhlVSeRGx3qzAVsONxjovzigtsQcVqCrgpcn
	xO95wCLLP0iwnz9yZ/epKbwzi/H6o3eFPxIwY+t4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645776385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4/wOAxPSgAyfTJz1gf6Me2+zNf3sydP3FLCOhIHAsxU=;
	b=XWe/nm9DNGYY1YKMXBBb+OXaJSQqYcfx6DRYT/11SNt5MRXr4GIpo2PSMwDn0ncV
	0lFli7WTtigFVujs+0XIp8hfwr+pCb+7StU9S1aGCzLVjfudzY2g3jrMdUKPpk/vtSp
	OKv0e8HLP0Uosr84zOkqWvA+K/nXzSFKe/94B79Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2feab2d7-d883d288-23db-4c60-a743-f4e5295a1151-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c2f0c042b801099b88a0cfa954b99206934e57ef0279a8e8ba8a95343dc9d90
Date: Fri, 25 Feb 2022 08:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645776384
