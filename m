Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EED630E0D4
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764608574; cv=none; b=Y/2Qd6xbjX05K/iuQ9Kw4HXM3pMCz1veiN5CrlrlADUSj/QF/Yf9YVssaXkI3xt/oLqY2/XcXQTO0SmqlIWaz1RM3uqMIJ6k4aP5JIiOuKT07Fw0QQMFVY/KHQDoilm+0psWk1PA/sJqPXCjOkJ4iep6Fp4jyX+Tm9JKhxJN89A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764608574; c=relaxed/simple;
	bh=7tKcfHXGXKQGVtqIvxz5VZvcDl2G3JtUvVoQBH1neuw=;
	h=To:Subject:From:Message-Id:Date; b=kb8jEw0EEl77uunwDh3U93kumoAy3hpO1zl23GhhdJtXOXdzY/Gk+1SRYpTmvuBwlKdXBEqueqJnYOklkUKKOkC99xUoGGrt9a7zXsBw8RQfT7SzJjG3rMoXBgTb45lmGuKvqF+JwUY1762hmOV0AqDTWohiOTHa5PhIj4uueWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oY6vSOjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oY6vSOjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33E5C116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764608573;
	bh=7tKcfHXGXKQGVtqIvxz5VZvcDl2G3JtUvVoQBH1neuw=;
	h=To:Subject:From:Date:From;
	b=oY6vSOjCzDva30URCljFAm546Ue6p/rIl/q83hV9qo3enSITc0ZdYsgSNAb3UdRd5
	 ChakgvxJGmBude6N9QDov5v9SzMAHZvF8j6bTvx+Nc3DLcQhIXx3evv1OZS1TQu+Uz
	 +FkEUsoNi0Qh0kconz/9XRjAKZC9JsaYig58IyTUJ0EoI+YYDOGNAicvtXTqSOM5Yi
	 Kfiw/s9xo1XM3vtOUBpT0kIYRrXNY56FARrilyrbT4xSV8WTb4cvfhiDGeD0j4VqeY
	 U2cKGIuKuPjAsQOjttx5VAj3lhmEcazOkRa5d9sNv9m1NEGFA7bgu/kGBhj+P2AU/v
	 qSmPWGriPbVjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93251D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460857359.8590.2930934756087294667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65679cef645a71bd80f0f04ce2049b6c6be7ec629fe243b6a4c96fbfddb0ad76
Date: Mon, 01 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764608573
