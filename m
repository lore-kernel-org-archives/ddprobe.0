Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B8D14F9D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762722594; cv=none; b=O+ksj4redwF/VusDTWJ30+NDlnfIOFVznk6ToOp2MZPnlcaEK49J5csXEy8HKzUkY/YD4yE61k+YYRyqH+5WT9iXFjAt0zciy5qqKmUzUm/qAhKfser4rPMgTAENPev+8zuXn/yhHf9amCvqG/w0Lwf0gAJmLpgQK8XTBZQAvzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762722594; c=relaxed/simple;
	bh=yFKcsiqxOnN4GVLgZCCJ9t4GZe4Qu59R4KKZmjVf97M=;
	h=To:Subject:From:Message-Id:Date; b=OOOBhENyzMGGqL5ad2al100evrttf8sYozegwbqtm8g/12nJhMAM1Ia/qUP0t3x7BG1b4TNr7ATlVFL+BXi4DYEI5J0kglNih1YGLaozC4Lka2NRV2d7IutDWo8E+Vw8KPG36bxnohWdGsXST6xx2BYyOpnOgxsFXUnhZgS9hjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkmWRPa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkmWRPa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5353C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762722593;
	bh=yFKcsiqxOnN4GVLgZCCJ9t4GZe4Qu59R4KKZmjVf97M=;
	h=To:Subject:From:Date:From;
	b=rkmWRPa+C8GKGOSLApEWMueiRm3DDQKP4N02iZV2onBRqhODISSKQM29DTOCbqjWw
	 C7eGLtvv3N7ZqAEAr/xR6OgsQ3A6/BdUZ7zIG48u+Ls1Bc2Wm9Nc3FCnUJ7WhK8bJ8
	 cLcWwRPTXoonDDuWqUoLSQZcXnkNCYSIvvN8lPrfW42crwGqg+GbHPsR0qQnWTpRea
	 8enMUYSoYyAMRnMbpZ2aJjarwBnJyXTuM3+Wt1NNndLpKXAWpkho7cthjbEE9PBIMz
	 QWOSk7Jy3lFtLLZpWQchJy63KEa2KNgfXliuH/hyD0/YaZyG0UPblTsWANe8/p9RlA
	 vy0hogrK23AcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A80CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272259358.30595.6794145833887733865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e4301509131781b46304e62700ea2826ba8ad68efc05dac533f46bab28b60c
Date: Sun, 09 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762722593
