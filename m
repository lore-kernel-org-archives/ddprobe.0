Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC2D2F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645923385;
	h=To:Subject:From:Message-Id:Date;
	bh=wefbYnHRBuyAvBRzOeJaGB3zGpwd5WKjP+3uQemT4WU=;
	b=SpLiOqwr/v+YPAg2RnLR7pchj6uofa+tctxZgVxB3u4jAVfFue7eXz2+BjNl2yWK
	6lm3F7aY1PbQ1ASbIXQPvYFXOT1Ykp2Yrn0JR2BrALpaqJYtk5BY0ZvXWZOo8BYk2jb
	iAJKeFwisAZ2l9IUPaP9FB6PU7M2vDeTKPfucSM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645923385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wefbYnHRBuyAvBRzOeJaGB3zGpwd5WKjP+3uQemT4WU=;
	b=DCjjvCIMsFVbJjDD8xsXljU3O+tNceHU/xIq/0QPJs5eOSNiEPw85m2n8hZmD3Y+
	lxb/u32YvNMSa//Qv3KKInvMuTcEiRcCmjymgHjOFzKXXnLle4JNkd9hN5czc5nrUk2
	ETr3BjzUYYttzns1KZfZpcXcmomzgIPg8xKH/fHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38adbdb7-f6d4cb84-d9a5-4de2-83e7-78a4a9d29f0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4807346abda96db1d55b9bab4088f3bb3f476cd923c60a876c4a0940262c7d0d
Date: Sun, 27 Feb 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645923384
