Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCD27E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646960185;
	h=To:Subject:From:Message-Id:Date;
	bh=FHOYc6G5TFHugDTGM/YggwS3Zb6lURLSojbFtzp+2t4=;
	b=jOjxgtTrJErJzndhq/1KDoZRbD72/dTkIz/0zALRnbSYHc0OhJWKWY/mcUXIQKLg
	UjJQHy0ceQ7e8zEz+yrcAk1Yw+ckP2TJEJxkG4jqjR6rOThxp3/yfvTmIWojSqDoSn1
	GDpkE4nsWE9OWroTInRr5I3DqzUXXalZMFJyrSMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646960185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FHOYc6G5TFHugDTGM/YggwS3Zb6lURLSojbFtzp+2t4=;
	b=Y25ZZffNPYxt3wMjCmRXIjiel2rVtkLbadbSPo+tw2k9v4GtNiSmhvXFd12zne06
	fdDkZ48x84Teqwx0L3819xHYET5koB6tNKV3wQWlFEG3dZDCyWtrLaP3D+HWS+0QDqN
	pspaOepvrszteObdcVahku48mm7zX4vSm7v1jRwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f767a0ddc-871361c1-14d2-43d3-9f50-fcf78414538d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e647af12f3195e63a20d99b731e3e6a627a7adee219ab7076bd4bf0fdc68916b
Date: Fri, 11 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646960184
