Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5616020EE0
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 23:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6952C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 23:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692746048;
	bh=Zb2RhDiTVmyaJ3Fcswup/pEYAbiu2l47zvw9YJJmYQ4=;
	h=To:Subject:From:Date:From;
	b=EOh++eotQwIS7RTL+pKY7DbNQSULJCwAAhFkfb+C18Xf/ufm6tOXiGGuT4N1akmm8
	 zTtYDGGcI9a2YkHwbfLNpYtahLA4Hglx6S5DCZVP4lUTIAT8jiKl4Ruhs0O4S32qL4
	 j4LzH7gABKDylxiK+EUuybjgYSJZhLubaXausof0vROKy5nSycMvpWcoGsCif5oeIY
	 g9z9O4hUl//vfHf8Ib7hEi5C0imaIYHaDqIvYBRe59M/7vO49x7/xXGL5m8Qy8KA7w
	 M3kgb6H+xC1DNzHteRZN53nEd3EFjUyvAY6bjl8ipx9EmiiwKwmxroKKRIdlk47fpC
	 r+v/ab7JcW6UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74FBEE49A5
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 23:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169274604867.22375.3611455275938109713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89fa128262340a95ebb81afaad85595f8605d65c8496d00da3306a7f51130365
Date: Tue, 22 Aug 2023 23:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692746048
