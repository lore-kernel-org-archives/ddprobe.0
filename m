Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54445A29
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 05:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E86C0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 05:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681535585;
	bh=qNLM2MfAZEiLF+QITnYGiJeZ6aMW5PBS7zxgQLvmFfI=;
	h=To:Subject:From:Date:From;
	b=iuBUSUjv499I8s9LFklHJfUTMN7Xxi7C0dBYcWlqHjjscucWGeAyn71HY5glXEseu
	 49OyYWMZVL3xaXziJdGOdeE0n8qqkqog1C3Kxd2R/eO0nqpsQx4Ch7D3qUvXwriPSy
	 q0uRCJyTZsCampeUGl5BAQ+EoxDvpa1mZDgbHdEdpp/2KZYlF8UJSVLBoKfzSXVIhq
	 spMhfkKeozKPYDkHblMlfixRvIFYqjHcDttKAS0aWj+n72MfmtmWX2mr/VCSNsAHhC
	 GouIkLgKgoTmFNZJNC47zQfpN3mJY7KIfXVV85sqpnTenKYBn2S6kf86Ngqwlvkbv6
	 uQn/IYE++iUUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CACFFC77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 05:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168153558578.6013.15956171569598197640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11715d8fcbd41a7fa9a2cafae78b1590246886896b5aad6b01f63e5525ba6ff7
Date: Sat, 15 Apr 2023 05:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681535585
