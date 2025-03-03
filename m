Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FBEAD27
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740976734; cv=none; b=jAlULWFWkOpRU2A1iZVDUeveJtN1ycxnQ8qn2jYKCSTYZXK+KMq/YxQzz3VLBzubSST2/44d5mwsEbzc2oKGut7y2mjYQJHUC9MmdosXSvPlQPFQO03DUIVt/GZlq1qlfQ+e/6LR7TEH+F9sRlTwQNRBRXdZST+ngBIf4/huq3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740976734; c=relaxed/simple;
	bh=s7WXJSuOBfLVheWp51coqVqSp1hY2AkWIhHP8JLcZPo=;
	h=To:Subject:From:Message-Id:Date; b=IadSAbxgyi86l09M5fE02zphw/MlvjIuVQkBjKUHEPJ41kWlVsA4Mb/heOXIvlQqhD5o57hp0ytLOmOpnhhnbdDu1QWOShxvNfny3lCUiAGJTtjl1DEb839NZBZqph2H4BSIVvZ7VU0oOAs4EHl6V5hL8Wdh+5ia44Bleqmy9c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiXnZooH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiXnZooH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5139C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740976733;
	bh=s7WXJSuOBfLVheWp51coqVqSp1hY2AkWIhHP8JLcZPo=;
	h=To:Subject:From:Date:From;
	b=EiXnZooHblKrDzYQSgZI3qI7Dqo/1tuonf9yN05YD8wq+1HscWxz+GaixN6jqNA+t
	 6cIxYVTEh79bgQgEbAsDHpzm6GcEKywm7qEaoxFZzik9hYOYm5hy5qk6QjE3dpF7ZG
	 1O9MtgYT1NbU1ssGkZe3/nbVk6EGSY5Auwcvky+yj9X+ET4cg/nPxAOG2T9PP9dwdl
	 1NR9rpPdO0JouRIPPoAjLVvNrCk/UzB2MiGwnl5NM0i3iCucDnozu6O6zR208d95mF
	 DMrsJBjmrCxHILtuuV/hyUOZKmVPTPx1TuUsgdGlYU6XQU6E+lD7Spsywrjsi1XSXJ
	 nmZde/dUlKk/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B8EC282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174097673358.27453.12886009402426897145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba259efd4cfa14a0eb35a51c43c75fce2ae50bfcf0efa2ac9d2651f810b8457
Date: Mon, 03 Mar 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740976733
