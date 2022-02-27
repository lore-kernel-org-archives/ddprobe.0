Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 848514A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645986085;
	h=To:Subject:From:Message-Id:Date;
	bh=Qt0GNvWEkE3k+sHCL+vjjplEW4Qxp4vNSdCYYaD6mzQ=;
	b=lW7S1rAcLTmHZLEFMFtkog/CHBgv+sa5rXeYqgqsezj6O3pDgCq8B2l5aL8h1/eI
	auqoxDzKDY1VG8HYQYUSpo3rKPSmX5jowBaBBfKSfrlgatWvZ0b5c8mo97y3NpaaHZw
	WaM3JlIdWydHtGeXARMAfpQ4YC42BWRCbqamG/lc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645986085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qt0GNvWEkE3k+sHCL+vjjplEW4Qxp4vNSdCYYaD6mzQ=;
	b=dcttanNHNJUaoOoaJylerfB2UR86N8EaKpJ1g80XnCtfsRSZDuEbq4x00OUnEJjY
	XYfV7SCS2A0eV17COx+dV8Hem1w7h3LY4Yh9OXimCdc96mBkQ9ZGw6hIb6q2G0Dwehb
	mYEjH+orMnqtm2pLzBRrFn1R1he9/Nfnz/i9Ae50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c6a77aa-079652f4-43f9-46f6-85de-b78320057d44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59fe5c6570ac1b1606119f913ca47cbcd8b6a2396822a8400ba9620a078a2d5d
Date: Sun, 27 Feb 2022 18:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645986084
