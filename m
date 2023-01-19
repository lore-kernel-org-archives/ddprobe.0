Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D946B33FB
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E41CC433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674120687;
	bh=xC0TqVmeKDXI/h1x/Sk0eynniF3Gr1g9ewCvXJl1/5c=;
	h=To:Subject:From:Date:From;
	b=PZ0LjOdaUluce2vEjS3wMU9zkG8aZn6D3rLi9Ecgrl0Dlz5+Is3rts0NXUuleJRFJ
	 Oc4ch4tU0diLB7W2BFMZXFEL/q7SyLpRSuVkN/aplu4Vhwx8CTwidLQWQGw5e1C218
	 FlY9VEfZcOUMbIH1Hs/oGtSlchywU1T4IzqgZ2fs9Zr+zpgYSsRCEkcVtQex3Yt1Es
	 hneVZq+AT2F2JZ6A+QjnJo+CHMusp6Rmr3KoqlCKeYBxSA68Hb5b7dvA57WEof1dFm
	 9rC96eZUQJL1vyQQoW9EL7+LAVq0U+BBNTsFx/7VNF1FniE2qmiXK397Fc1vknmIjQ
	 fX9sI4+P1DJAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612E4C00A5A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167412068739.28775.7085195181225903120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b0de32f8e4e1dba2cc8c1d97e98764787c17c8d0e691e7101be3e59cff4264
Date: Thu, 19 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674120687
