Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAD46128
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73FDC433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690969928;
	bh=XaVvJblLM3dG302mgunwYPpeLqboaDLK77hH0JyaVJs=;
	h=To:Subject:From:Date:From;
	b=a0Y91KLuWy+iiT0IMCr3zS6Rr6Psz6BXPNnuAPa0UHVA7e6nCpUBUSfNKFJfED5bU
	 M1wCcEiHLH32oI8nyz9qC6HdhL+zqF0wefyQu+N443TeY0sJQnF9oirix8PgkapZWV
	 rJx+iVzAhdX/UUTTPhQT4JiFEksuGE15s/IhYW8m51/GPExp3mOZ5gNKdRiEA690Wg
	 vLzmffoHwyEbkV7ghlEyZKA1phG/i4iK+vWhXAf/44w7Excx1ArvwqfdTR8YpUVKNA
	 VA3Aywou7awOV7xxCMWFE/302phXJ+cPzDCyapThFGm8/Z46dG4w70p9fwxPuxZL+5
	 IVAVfI8V06p6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABFEC001DE
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169096992869.8485.16606766052362557660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6284c5d605c1f183baff94879cb8144e467d421507d82389158bf230f5cc3a2
Date: Wed, 02 Aug 2023 09:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690969928
