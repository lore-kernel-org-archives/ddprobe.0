Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9175328E2
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645196784;
	h=To:Subject:From:Message-Id:Date;
	bh=Ju9+dWrwZwXtUUdzNwauf95/yQ0SgdzLFBy8AsVSfGg=;
	b=WI0xd+E9/FbYLNlT+jyWYs/hLPNtW+KLiq8L7Jw2S+folaZUBh4q5bN+kVPXiLel
	4nbv3KhvPeFWyOcxHSHnukETILxCNUeTAQ0sHcnbJy/lzbMD3QzEd6uejkbBx/Vv4k7
	iy6+YbdW4OWCoJntACaiRQxsY22aWgRKc4NHgKU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645196784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ju9+dWrwZwXtUUdzNwauf95/yQ0SgdzLFBy8AsVSfGg=;
	b=NKn1XWK+V8IH/PSfvyu2M7JuajBCB+AaAz7Ye0SAYtdU8Up8Rsi6YB6BeNM9wXfx
	wDdo8VXMDxVLr63RkxKwGnlrAKBkDKRJ/l344URKwcRJQ4abwBGcdfRMua4Sxo9AL4S
	wat6KmThDAH8m4jiTZ47SiLVGxyQc2TcbUPsLa8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d5eb460-5feb2943-d5d4-445f-893c-2eef62b47c8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23bc4e3cf7e629fdf39ab89ad4fffa4dbcf1c9e407af395950f51b2a05a4737c
Date: Fri, 18 Feb 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645196784
