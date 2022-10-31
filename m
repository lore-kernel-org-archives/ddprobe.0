Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD2617F4
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB7AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667206254;
	bh=9qzNB1rvb92cznH9F2R0O5214TM3SS8R5bct+T6Z8fQ=;
	h=To:Subject:From:Date:From;
	b=gJspmsuMxQnLnXKQIrnfYJ6gaQI6t4IVAD2PQibsjIBwGBYry5kbIn5HYKQZvClVP
	 E9zAp+zDORcr5x/xCIW/trrZVsRWC+cLJ4oBrAOICFoZNu4VukA9L32OUkTccSucmk
	 9eik7EO8q6iUcdBMSffw1nh76OitQOBzwiScDpiANTvvjKKNCDXLeambmdYj84/wWJ
	 X9tfWpMwf4AY1oK2Le+tQuhhwQ/7NOadAxYHfSnczT7yBipuR1B4WAPxLDpjnZ9vJs
	 TOtL0Ebkx+/SCceoNDp4o4veDBX/+8IKe6jQFuF2MkZddPUqBvS9PTzbk9YHEPRH/i
	 dtV6YrLEg70vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510B5FA3740
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166720625432.23827.10469615274102006499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0b29f6a5a52670d554a910471d5b1b4d78ca0e481598ddfc42e459c591016a
Date: Mon, 31 Oct 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667206254
