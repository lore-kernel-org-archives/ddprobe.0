Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337C52ECEA5
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779615754; cv=none; b=UvlPhEK2hw5dun19aOsXQubYVFCdFwN/WZjOouAKGEFXM72CfpdnRJfMEJN+KXGKD2oCttmaLnpkV0yJSyqzY1+D4+yqzJOazVR82a1s7c6T7AtDAsEL6kNpZddTe/tT3A2nvHtsCaz4giVjQtdmjOC7H1rpgls1W306g6zZ008=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779615754; c=relaxed/simple;
	bh=2m0Em3ztV7d7Y22KFKHK7JOBe5RiGRKj60oM8vKER4k=;
	h=To:Subject:From:Message-Id:Date; b=UELEKFwzIt7AGkIELwdW4P3NkxA5lNu5dTm6f3EuWMX8mNB+/BkK5H1SWjbKKDHPCjZ/6FAQNy72UuWJ4uDHtkiw7vPuIpmOq/HjSvMKDpezkJEe8rsqP4o65iohtl5LncFLoGkqf3Ga+wa2Hn9e90hKpzLNshjHkwzN+TPTpFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myaKV+95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myaKV+95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BA2C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779615753;
	bh=2m0Em3ztV7d7Y22KFKHK7JOBe5RiGRKj60oM8vKER4k=;
	h=To:Subject:From:Date:From;
	b=myaKV+95kBjgMnm5QWhMbDzpWYyUzOqXYBATf4WBCi3A4b9e8QVnbQfshBTkPKfHn
	 7bk7IzO9gXuoGqWDRv56CrhAOhWuPEa5w7pjkWmMw16chZAe5urPmRAJAJl5nbJfoq
	 nRGlaBtVK6e8J2lsmTb6bLZVkpprGda25HR6GWiHVnWMnrZfks5HMjsWvxmhEB8NGs
	 0anPnSDkV/yYxhuRawdlQXwSLl8D5WMUhb3uuC0VB9HptzmruqyA1stPk17RmZa/Ih
	 nqRgbegJzbhieihd1fRTKCG6oLP3wx2DEgfYBoGBszUQaVKTuYS2l8EkxYjO6+XwV8
	 xVGylPlBlWv/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF29CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961575368.23826.9178266745435201864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37dc961039992487aafdb0ba0b735b7947ca55244fc7fa41427d6709e266bda6
Date: Sun, 24 May 2026 09:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779615753
