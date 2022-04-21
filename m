Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB031840
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 03:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650512398;
	h=To:Subject:From:Message-Id:Date;
	bh=ST4aBT5LGGs9Q1FZAT5jw77fxw9t8YdBpqXh+4Dp4K4=;
	b=gw824JI1y45e0UnWa0qMAxH9a659EIzYSIzcdaHKSUp2vttqe9OFQP01qChr9+VG
	0v/S/bAjVRwdSkts9OtG3ZGpbfO3dGn/5I8wJ0W5+bBPDgak1ydFegJOqXpsETOi+q+
	rDHIpnLHkZg9y8zasM1hMHCV+RyMcuzGh/70E1SE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650512398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ST4aBT5LGGs9Q1FZAT5jw77fxw9t8YdBpqXh+4Dp4K4=;
	b=fEe97a1q1nDFWURPWI2+jothYigIxDUOSbWu07gYmJ1sQMvjCkaNAZCLvD+0bzUU
	NZkVK5UaVQD0PACJFwx1SmJc4GWetuMFmsxxdS/lhY+drlXeEwitxkTYTWnyv0GsqVK
	w1Yh7S2yJ4Ug1Xp8x8I0TDsd9Qg+0FuOvY81KcKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804a34879f-e4c6c806-c17c-4a9a-a058-656a50983ee9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f46af4170725ca2257fdc00cf3566ce83db83c50d0a8b64d2bb3f926d3dfe16
Date: Thu, 21 Apr 2022 03:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650512397
