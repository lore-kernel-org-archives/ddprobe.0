Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668B310E4
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 04:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D92C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 04:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691726588;
	bh=78Rte+eUp7+FbTgCKmvvPTzZTnFquytThod5ph4+boc=;
	h=To:Subject:From:Date:From;
	b=eU5+A9s9ABgwTYejjQ2gKZrEvXTSwrQbOhuv4nFXVqIosoeukaT1gTv3TpWuYYq3a
	 jV/uDqXqVMN2B7KqxUrmDlaUWoAQQrSdMT8bVzP9NGbMExIDfEAdUqs/xMjw/h7gnm
	 wk6p8iwrSP+v7uNCrZUmij9/URlHQhJU5dYiP9RmIhZhGW9s5wOIegndhbJkSiBjIC
	 vpvk4iaVuC61LMW5LK70YzPuLidSi9RkeMnPz0f0xIMWko0TkbaucZQW6dwGlG3fgQ
	 oWorqnG7F+SQnlemIuC3M4qaEQZF9fm3N/0mhpRfyw2jT0ZtM5sIWw/ge/KTqkaryI
	 +GwIX/OmArgQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC81BEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 04:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169172658869.24313.10898163736538285967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f306fcfe7262acbc60db51f3222fe19576ef56dcecd41dbe6e2592fdb75967
Date: Fri, 11 Aug 2023 04:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691726588
