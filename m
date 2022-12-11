Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D4C1386
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 826C7C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670741487;
	bh=OkxxE/B0IU2yestTDTWozEnmofzmNdqeg3f4RnfxMS8=;
	h=To:Subject:From:Date:From;
	b=fBLD5QGtww339X1PiT9nm4qhSCdd5LM+Ow5lZl+AeaVzgOvrwMjtVo+Wggge8p/cW
	 JS7j0BtwN070bViHcklp4G+xZgPcvm+ui6l3c1VaBP8Jiu9UJD5DDnZBaNOSVnaE1U
	 i7HI3DNRlEjEHFfNhsnTsQjV/pbvqJpS42MClB9O3jaA0ZKKT3h5cupiS+H1/k1abU
	 vuQwc0U8kPDrqZ7dy+iMT6SLzq26V6ypy4NkE0dQcTGSphrOydsgJsrjgXSY/K7AxL
	 rFTzJmp/XUG3K/Z7qP+xC4gjH4o7ET1/yBz7n8G1sietDeftoIbfaX/LnwliIO3mzM
	 zleRrt09gcZOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EE2C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074148740.1934.9727985525795911824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b507d7cbd8f7aad23f8620a9dead8152991978a8e91e8bd489ad5ee5b7fb9a4
Date: Sun, 11 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670741487
