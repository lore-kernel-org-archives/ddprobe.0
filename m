Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09012104
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646194885;
	h=To:Subject:From:Message-Id:Date;
	bh=mS//7V3gJugvL6vrWThleYKR6/UIzVTz7KkJ0Gv0lYk=;
	b=CQge7Afz1FqhFg+FAYBW6NNZRq7y8PTfi3oma+rXQdXdbpt+xo8gSpqPoWol8NME
	WqKX2jmkQhKVu4Yvya7Bmd55qnOEWTg5/RUS+saIeoASTXzoK5zy0rRrjNfuxrdGOlR
	gGgVf5skdiohSZOAx/swh7vWr1i0w3Ru5pZe9GH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646194885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mS//7V3gJugvL6vrWThleYKR6/UIzVTz7KkJ0Gv0lYk=;
	b=hIWA1+Lt5AosILRdet5N25he235zcjWRS40c7VwSuvS0sAn55z4WDVrEWOp0Ou8z
	aQu5mlr1qk7Qgl64lpd9U48ZZqr9xFuGAWnDqAh5LAPnmiQ2IxvMqbrGcS7uJV3Bymr
	B7yPizi+eV4TLZlHRfuZhgrSLJn6J2kJJFcwWDB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f48dc8108-92ba36f2-82e6-4366-a004-957c663aad4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 303fd65aeb14482d78997295c636df363bf5d34e56318500b1551db0ab5228ac
Date: Wed, 2 Mar 2022 04:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646194884
