Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD6E22301
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744693794; cv=none; b=U7ZhCYx+BjyIwN7PsMUVt4ue2qlQZVpnqtrvKeWLctodYjfA4CTe9YRiK3LZ9Slu9rDC5Sz0YVDKovz9JD5ERAk3u8Hd+9wqf6BPOk+Mmv8V2Yv692hQExuyI0/HHK9c1PEflNp+L3WdB29wZyD+6t3IrwjluEe+hq0jyTa6+uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744693794; c=relaxed/simple;
	bh=yRUNV6bYNVzxt3PTO+AnRVu9N2boev3uDylFxkFxCAE=;
	h=To:Subject:From:Message-Id:Date; b=LsfEob1oBMhd4OaCrZL0EUqUJA5fK3fnFry4bzXo0+Gsdpda728bKoM0P9n74ziuil5RkfZIn2az11XFT/lA3ugdAIEoxqIqekC74ZMRwbrm/yWeitKuLwb9/UQS6Pd2EgyZ+fnZUMX9s45nWIbyYzoUvXt9OPx4LX0uI7oSxiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIgX/Pyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIgX/Pyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA00C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744693793;
	bh=yRUNV6bYNVzxt3PTO+AnRVu9N2boev3uDylFxkFxCAE=;
	h=To:Subject:From:Date:From;
	b=XIgX/PyvTZzuJzzmE3aO16gDrrrJVBr92H0egyePCLzHKUFIFAdNJ8flSahAH/Ox2
	 20R2olJACiEOy5KUPq6K0xiY1jLHQWq4QYZkLTgafsGMKnOGEhTgkGBDF9Kehi0wLk
	 Ccrct+cXq/gsC0SuDEnj5nFRe8snIQqcQk4AYGrZ5UHT93GJFogp0AA0QUee8d7Ewl
	 ykYpQbvCEVD1/ScZyjrwCXK2zlk/bXEpHunqNB+qkQ4nwitoUSZDjr7CIEBuqYw5au
	 9E1MMCM9fkRFm7U+HNj6pS+WPKJ2jLxGGIhLqwJuN4mLgviWu22xgLlsB9bx1BYT/F
	 JH3E55Etdy2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A67C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469379361.1179.9543801946869569278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c36cdf5cae3d244c2e9f6ad675f54656b8f9fb3e107728320d3114df5a6a01
Date: Tue, 15 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744693793
