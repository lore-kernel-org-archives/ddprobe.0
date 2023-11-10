Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CA912B7F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpqYOTIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D4CC433C9
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699613296;
	bh=YF5wxflhc70DIFfT5T65e6iouF9qHhTmHrG9RYdJo2U=;
	h=To:Subject:From:Date:From;
	b=TpqYOTIPHEvS1SLplf9UsKrWvANRmGZj4/rY4ecn0ubjWsCYwRZTs/gfquqMaLiIF
	 XBI+fp9IdGi4MfsE5zDwy7oWQxAoyYjvEWfiKoXvTjEhnrGU2qfNg+ACUnzza1lBmN
	 BGuiY7PdNFKt8QBfRcq18JuGQIfJZOp+3iL9OqZ53udYwfn7fSKW6WWw5YRQgrZPQG
	 ExPpOKcg1zhCfL6UitW0U0xmy8kXvc/7u62aZU07FrEQmcrYa6aybExh0ZG4h5kNrI
	 cIzpgUllQDTVwzHH1YjAktrsk7mX4tPT4aJOtySFC1/pvYhmUt7Xr6g5ryK7u9clw3
	 x6hgwDmj8Porw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 686BAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169961329641.17106.10345602963147025180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cddf4855f78f678bc71133e28660d0a23f17c924e534788c7cafbfac89a70ac
Date: Fri, 10 Nov 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699613296
