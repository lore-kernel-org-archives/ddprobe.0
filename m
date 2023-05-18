Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3996C125A0
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 10:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC650C433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 10:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684405565;
	bh=aSUzd5mUW4IBlPG9lvnu1yGv8AfQoufKqy/QFfZl1v4=;
	h=To:Subject:From:Date:From;
	b=V2C1XFPUhfliF6Ht7OwT0vtoofXhEyE+B1prtTbRs7m8bH9NjCjjAQTdaA0XMGRlB
	 jR/+uVjNnNybiNZa9IKv7jBKBuEn/tLzAdmwcZaB3O6S7hry7QkQcauZzZet8xe2yS
	 +8MQ4vxnKMGvk63vFbt3YJkj6grgWGIxNfyryYDNBIudS07NoChQUGZrtZRGFdiylP
	 RlLZqfC77q1e9AfYU8PAnX7oPSBaSMgeofiw3iUTWdCr1x9cmBA28Jii7sj338SYHi
	 45fraeK29wTFKoVo/IgLUiXe6vVyaGyGZygs/68CIpQMGKPA2yY/Nm7MV9seAqg05v
	 VstcFD0ZPMohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F0BC77B7A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 10:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168440556578.11624.1547297159931475344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11534ce1ee820eeccb427e47da6cc74acca2752884a6dd5e8ed70ad441e3da0
Date: Thu, 18 May 2023 10:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684405565
