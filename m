Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD977B3E1
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751832594; cv=none; b=VAftcb0R01ULdj7TmiULUmv0dqifQH7k3MJuaLU8ZAtgE6AiJjgUf39+J6qRGZTjjGncbdIGae5UO+dYD3AznVDX9Hs4cNqjMGddfppDkp3fKEbx6PFajpWMKwjJTmeGYhr0+hH4nuZ3hbm5ZZTmXrqh2wWuyZopZBzj/EaQTuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751832594; c=relaxed/simple;
	bh=7TholDahq27uNHc6fFg7M38ShlbjjjR1SjpC3Kxe+Fk=;
	h=To:Subject:From:Message-Id:Date; b=j8OAxmo4a+wa265iSQztTJz+suMyw8Et/TvM5Fu1s3WjX70AMvDux06NpVDKk8HBlAx3AupJFbTzfpwX2WEE2eXzF8zPz8RTEQTjbYgW4JkjkdMIENl7I1RVp7ZY3rzNA0Qqw4cVVZ8KmC7qpYNnF6e64OvSuGepppe5wjnLBW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwuCG/R8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwuCG/R8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E58C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751832593;
	bh=7TholDahq27uNHc6fFg7M38ShlbjjjR1SjpC3Kxe+Fk=;
	h=To:Subject:From:Date:From;
	b=HwuCG/R8T6UZTzE+UI1b90liKfeMwOrMWGBhyDKy6r/S0twQyYJi5St5SDZPxypP2
	 9VGNp7PIlDGmPwc+Tb1b8FH/+snLZRqDfcbXqNfIaJu3mCOilAaxvQhKPZvt0NHKU+
	 XBhQ49r63rgv7nBZlk0CbYGBtEeoNLliHbWIj8ibTFiZOvCLA4DR3c+8UVTYctfirz
	 5lWdfn0S1qGar0aQ6Y7XiQ0G567QOloFcWXe8jFijg5iN4QWC/fZUd/o81/9kq/zu1
	 M+oTT547WmW9MuTMzO0rmR0RdBClrm+LCp3iXvhs/OhlrCxKfCgy7dl36c8HMfAj/V
	 IUaOtyry9gxfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D6AC83F09
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183259357.22422.1461257976953204944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 829fced66aec165e729284d535658f2d5ac8c237b1ca33aa5a04f086e266fc54
Date: Sun, 06 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751832593
