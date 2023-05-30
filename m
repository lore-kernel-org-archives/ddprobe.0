Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28825200AD
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 19:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDDEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 19:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685475785;
	bh=gyljVD16aqFRd4naw8ZQOhMNhB9UAI9CO6vk61LkQV4=;
	h=To:Subject:From:Date:From;
	b=bDvcc17KX2IFI7rWXh6N9PPml50Kv656bQjGvQF0DbwAPKhiZSMJ9RfSlysDC4iOO
	 vlUoEva6/7Z5z94eurbmltrvB4cLnmqZ+MtbTq1Mv6x5UaNz2+fvbC24GhLwCDlNg4
	 7yIi+2MKQVSTmyKjhHhzi27kAZ48oFzW2HXWpYicizKG28R9nAxLFwNYm/mNDdc/wE
	 ioCZkjThe7G/Ff/DanqCabHvd2+VOfO6Wy2gOTtMmya9vtRbDD2EmE2yOTIPPWuGRG
	 gXbHpTS4MbgAVw0+7aDN1fYOs5YjEhj6wcue8OtzFkS/dxGXSShAbV3SHUQHELQ3+0
	 IJV2WP/4REG6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7074C77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 19:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168547578573.21560.8672939715863682962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f3c8df9b02ca13a95f8ad5ca4a3fe240788e24caa1ff6e65bd9e1d8df2e214
Date: Tue, 30 May 2023 19:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685475785
