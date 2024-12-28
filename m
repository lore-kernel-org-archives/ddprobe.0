Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AA02744D
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735413354; cv=none; b=FARvcV9et+7okmmRe4X2n4djHLtoy/3xZ83xkZEsayeeGPjVpHmjN7Y8ufhugdB0QsuOSjd38u6n5eIYNyK+/JDlo9nBg9qfZsUqg5sjBxP+hI44DXzXtMZmX0+HYD/5C6EPaMACJraAUNPA9jbaP6MBBwjIHhtfQex4QsdHPOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735413354; c=relaxed/simple;
	bh=f9RwVV6iFHp3Rd16JcTmWSNHlaouTYPVKEkjRv26yQY=;
	h=To:Subject:From:Message-Id:Date; b=f493mb9gJp8ThGhaHAJjUBan4dhCy6e54tplV5MQEAP816yHzKVfWgaUv2q/l3rPZcZnoylLssNIA/7pUuuM/8U2AGUhA7ef2nBPZjTXkQ8IogImCreH6b4pFmLI2zvfd4ohSgIIt+pSpxNlTB4wcxMwYgu3FgIJUO7Sye+JhfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YecToTXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YecToTXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3CAC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735413353;
	bh=f9RwVV6iFHp3Rd16JcTmWSNHlaouTYPVKEkjRv26yQY=;
	h=To:Subject:From:Date:From;
	b=YecToTXJgqkVneK4qJuZKFOPfUlDVjoHWcnWPE8Irmpm0WoD1xXLQJXjOANIeJQl3
	 4Ym2Tb5X1CVCOovEnjlslhvPOpdFLlSlSn9/55NodwBSKCl9bJm8buT8gsiYWMdgNl
	 5eEq8zI5Ph5Tu6O8zHZQzv913Pi8pQt0vjdQv2dacHiDB1ryP6ZaqbPqFBY0Kjh87d
	 VCOC+0Sz8p8yH37C85e0hkxeMSjwOLXAzG5/Yk87nwOVv1Wk/+vIOgN98KkWBnEklC
	 m8AtoF31I+Mkw8yUPNVtIbytHsfrlJNBNbmO86XHtPfVOmHNxlJIrhIZdGIuZkz/ZJ
	 vnweKL7QGnu/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCDE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541335359.31950.2798807150870595987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b4d4405f49c6e3f30bb9e3bafe721c6296669bde0fc7e0ab8d2eae6a91e23f
Date: Sat, 28 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735413353
