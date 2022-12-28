Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95461109
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7ADC433F2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672224687;
	bh=Wl1J5SLnNp1HoJ3sMXN7mMXRGt1GY50YFBv9ZeuNVWs=;
	h=To:Subject:From:Date:From;
	b=pdoN12ptXPJSPQMfgFZGORFBwlPnenpIISXyRzrcpo+9ee1Ge02CHzJqwj8RwGD7P
	 FqBW1hpX7gMIGSt/VsYeguheaYSRBoU4sN0cerfRSKRqDA9UGVsmzqRqM5GwlFokwu
	 Qq9a/O2QfqOTce/t8eTRnzFGkRQ0UO0g1oKEf9Tq06oFgKHkItILam/dZpFALYU4ka
	 CLfiOiq4BQL3a/r4nyrAkmUUe6RyvBNZX/RNqOeGXaSkEpckSQydH6Fcxsy1pAojT8
	 l1g9KLfCwbk/sJsZYUx8M6AgJYmtpDhezEFnDXXCdlG8mr43YdYJHu6oNVZSUzlnWs
	 C5LtS/rYM8VGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6D3C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167222468738.5842.11374446935629651427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a81f4656223e0c0e3fdc35a7ce7f5710045e62c96aae53ae49627d04c2f6ecb
Date: Wed, 28 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672224687
