Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702F079EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 18:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04AC3C4339B
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 18:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677523566;
	bh=LsHgvunSwoDmhUed2KRky9IvhzHleUmWSFANu6nfiRQ=;
	h=To:Subject:From:Date:From;
	b=s7oaz3LyJ6I/0AYqO7CZb5b6/d9qJIOuGKZH08cZGrNv7XphCECVanTHfAc8uSyW+
	 xi7CX/0DjqeaOoShcQHpBIfsmpnPkfmVOw0uIXcqOBtu/IehI7DjjlekH1ta0NV9S1
	 IQS/YmbkJajEibRstGeAmvpVtfOiItIIlZadzY0xuow39WEP1RrdikBVJA8HLqgH8I
	 yc1TtAcHhLzZg/R+8EGn89j7s0+PbJEW5PAeWq/gnbljCFc34n+hpVTjsaahpTFXIz
	 Uasl+Q5Mypd/MrtNkokkilicyhmWVYYq1FSsdFrKDJ0YsQALXB8p2gQdstl6wwsBqo
	 GxVECvKv9W+xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C997BC7EE2D
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 18:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167752356580.2754.10306187860304665348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a10edf810eba33a244e4019ab00e20fe7da7de9e758bc9b42eb3dde3df20ea
Date: Mon, 27 Feb 2023 18:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677523565
