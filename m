Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E681C6FBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E61C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670712087;
	bh=YiW2Eq1OSULBVDxak+Ke7qMqPkYIQINPRwM2iEoy5lw=;
	h=To:Subject:From:Date:From;
	b=Yo1AhJ7xkcOz00c1mj3yOqYQuU6GZ+ozF6jTqs6IOuVxPwrKvcn7isjFsfMNOKrz5
	 DmkWHnBYOnhxpiMAwjTPs/g3hQfIxGu1jrjOW6mb2fWYciZ2dP49NMYlD8XtmHIqCp
	 qsWBy3ac0AAffeEIoBzVwxzUltN5KAH+exPc8pbOy0qcs0Rfk5ha3OcihhcHDqctDU
	 VOKoGHjUTLl0c72RVERSh/Z8xV+EQDr8GWCeopC6XDO2pDw+VAgmbmO6ayIv6ChiGa
	 NHLpvjSsAuN+Diio8h4+6m8tzA66WWMKp8qPTMjYbSXbLS//2zeUh4b890gSdO9Y+i
	 h2kkC78Z7Za3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D45DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071208741.10654.7890539376967473060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccaccdd32907a2b0fc9ecb9d8fc2a14c2b7f69808b38f3b98f2fdcb84dec9d48
Date: Sat, 10 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670712087
