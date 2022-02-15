Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C4D7C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644952285;
	h=To:Subject:From:Message-Id:Date;
	bh=sK638XJhuAyjGIlSD0HvxIiK4OHSnzKiVRZMDVU7fFQ=;
	b=e2Tn1aFhOlwcgKEKSIfckLDmgyz/ZZjvKbrSnXmmavtWHblo+IEJY5uW6FXdxN1g
	x9qEknUj1dKFIsvcZgjyMDzI5aeCAbmohR+h6hGpoQGspCcjXNzDFVqi5HDW+2ulfSI
	U0T1AmJpZJXwcr56pO0uouKTn+E8unoAgN0rxvV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644952285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sK638XJhuAyjGIlSD0HvxIiK4OHSnzKiVRZMDVU7fFQ=;
	b=cFdoKqDEm2WWrDuq5oM3+iFXhhZ3J5ZKiETuGeaLjkeaSwDXo+yyu7g4zn4Qasoh
	nD8Dhq3x7E9nd2ZPlGA2tKOowq/SToIASS+DR6g9MdIY/NbWg5RVQ3/IMxsGp1Qv1Fq
	A8Dh3lnZvZnHriZAufCl8UUz+URhO+DZccWP5GTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efecbee94-56b536bd-0dc1-48f0-897d-6b8ffcf536f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc78d0cc8681b40bc8120061f55be6c8d63a6d6c39275526a08659e051ad464f
Date: Tue, 15 Feb 2022 19:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644952284
