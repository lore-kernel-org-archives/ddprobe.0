Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87923208
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C481C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671043287;
	bh=2AUkjypQZeOQ9L0ebK66sepcxSDbc3TNKT0sXwbq6Kw=;
	h=To:Subject:From:Date:From;
	b=oHKHd0ap6ju6n9rgp8c8GiOYIopZ9ZCIw4ksRP5TcijW+8R2O/AYHdcSaZue8w/7P
	 8bPow0yMc1DQkGbr6Baq/YOvdDcv9EMqDa0YdHU2gh5JNRZw4RZtny9PKmmA10ePpY
	 cLfjRAJqHQlCyzdsiy/gd6UxdcQ6CZLVzah/IOUyoQT36Qdj3djOCMEOH3pcB4maJp
	 AJw7bovy1QUecHTVzNVKNKhcgJsP3562RiBeM199MSQiw6irlybgUlFCX2a4a8hVIz
	 aAUes6xeLw7DMd+bYiiUHTfVCmydXnqdO2I5zWVKJEYx6QyIeT9GwSJa7ItCJZwTtQ
	 PN9s15cmyeExA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64DA6C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167104328740.6210.15044733146410329676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf96963f441091fd308698ea0b7bf8ab1587908164608a4bbb2fef52952edb9f
Date: Wed, 14 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671043287
