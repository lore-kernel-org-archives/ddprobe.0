Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCCF43C20
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91CFEC433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666273853;
	bh=unYU/RYPgQ7hNcgRuCnKGBNAVEI55hbgXMcOXMprW3w=;
	h=To:Subject:From:Date:From;
	b=U2pH/m41omXglUTuvozsEd7DbHz/ROnJtqv3m3UzKJBLjGHWgkfQMiyrut2uChsgZ
	 Up95EUDtj11rQr31mj2cABa41PEGAMsyALGPUYTBbwJ0QppL3NhwcUjD/mBZeRK0ur
	 aUzeVmmuXSLJVDJyZ9x49ytb0m6mzm6ITNTQrQ1JQ0aO0tL/e3WepDK776YcB61DMx
	 ydrSAPryY9vko+IxJnVQKi5Knnq5GW+wrHmOzaKeFnDkvF6Le8cRN61quBi3vL8UIS
	 71KCUxXczJ84Tsf2FhE4A824IIW5YCERNlHeizujejzFtbTfOQWcV2wcvWn4SblESP
	 tY02U0wRaoC8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7800CC433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166627385347.11376.3842363917633802452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6061080fb99a8785662742bd09d1660897e39f6aebb7059ce487bb66c78bc6
Date: Thu, 20 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666273853
