Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A792750FE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767334434; cv=none; b=AHtklTlayhiIjWcWBYMKa2Ee1/iE/frT2VxW8VHYRqKWAs3ZX4CRROAa3tkOWXchobmZ0sHLk6xVVgTk+qyBZ6OXgWYAlgDeIfDTWPZzLN9J7GuyNcuJKvLihRyGbv/Xm+RdviNPkx5q7NTWTjsHBXE4QxIpnKPNcgKFJO/HHdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767334434; c=relaxed/simple;
	bh=CKqlkD/Eg4HDDgRn/pTABn3PCHWXuu+fPdE/4A46zfU=;
	h=To:Subject:From:Message-Id:Date; b=lTJK08fy8rssVg8NINiodwTIxO+WbGotdn0YMahTcWif+5IIw7oymZGTydhMSlmccndsJWD3NVabTGOQs1/yf+bd/OBoutmm7hxs3beIQ7VgG1HU/HZ48AosYV04Cz7XdEyKAJspelqjIPecCnjKjyco8ktOtEPfs5bxIc+hwyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+kJQGg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+kJQGg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0374C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767334433;
	bh=CKqlkD/Eg4HDDgRn/pTABn3PCHWXuu+fPdE/4A46zfU=;
	h=To:Subject:From:Date:From;
	b=X+kJQGg1joRxQPyK8XzlG0a6A64VW1s4zAc9Ofu1CERlh/N3y4eHxGRtXY36UDYjH
	 ygKrMvTpnUTR4lX6cvwM4UGx9rN3j54U41W2ah4K2OY9FFbGfRg5FM8uRk6coV82gF
	 j/LzIXgDbWOqsF92XVLYtdR5NHdvHiXx7X/dgIEnT1eaZCr+AhwWuH6YuNjmrkf9kn
	 /IV6I+mU+loTui6YVbg+cWk7qdka0xvIp47SqnYFCUq0uVhS77F1u7o+d+Z8LAfUsg
	 FSmaMuFYGg3CC7jXZce7HmJ5P8H1zLdopr7BF7sj/jAhrIzcFo0r2NtRJ4Re+izVRL
	 wSulsFtOsWKOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F418EEE265
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733443357.2841.13750602840183160342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5388684bf1755dcfc149d38dbc02497f17adf511112f5b24eed9405616935b
Date: Fri, 02 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767334433
