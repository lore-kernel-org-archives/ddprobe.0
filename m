Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00095C2C2
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUDBzbHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7463CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702972096;
	bh=aZAMrNlCWNQEmKe99WUdkWdC/tnGiPdr7YNE/NHwkZo=;
	h=To:Subject:From:Date:From;
	b=nUDBzbHAuXgqEhQ7SyeD19udXhq8a1mEwF/Te9vmjKQuwpNcCFYKyAwDVeHu4elB+
	 1nZOUEjHTic6+KHr4ERHEpsAb54SMms4osIJ5KX+2tF/FipmDojYLjyM4NCRudVdWO
	 jjUiZ4bvAdjFMIgJ1s7UsT8kZC5YcY89zPXEtNdlmT6fQhcSL4J2GB4wle9/BIGZLG
	 SBkrF6VNBoOzyFg9fK7J9bmTI7hJalT5CJDWtUZ0QdoQbC7iVzunvg3K0rjtPYdfj5
	 8FG8cZhjhGroLx3YcUyajHWwL5XpXjnCDTmnb/BkKwRWvu2apb76TyIEG3dKfIhQcj
	 kg1qE6IMBeOLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6C9C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170297209637.18020.10296425493319468456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77cbfa91eb66a7187bf290f6adfe9138e7527258aaf79b5f561918aa71f8f38b
Date: Tue, 19 Dec 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702972096
