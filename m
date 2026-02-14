Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F4915687D
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771052694; cv=none; b=OjjaDUsxkGHcPzX0bERP/j8YJMDm3Xe6BcTBMLY99oNYmOKVxwBWj/np97IPcLyv6/m2Upc4fdNo0pm3Nvh4w/ntVBdmCSvRVxzRttjxPOUNeMS/JR6UMmXifTH+xkZCkdioBP8moMINZi31KBoS38MsA9DDAaWSwjQKn1AmSyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771052694; c=relaxed/simple;
	bh=IJCqbdkxcy46z9XmXBiIGPhWo0LmF752J3xLa1yjs1U=;
	h=To:Subject:From:Message-Id:Date; b=lBvCWa7zs+dzytVY/wmlH2DhbC3fB2SNp2vftle6HJYBGTld6qdPEZ5P4YiaUJtEYg6AoawwRvbZu6VOTX30Nlqh/6MD0cy3nthWAbqLRX7TCIM50clLjJ1/ql/cpC464KEYQbhHGh4slHrVFD6kYGdgaZqKtfh967+h+0qYtw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhOkgQpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhOkgQpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9B6C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771052693;
	bh=IJCqbdkxcy46z9XmXBiIGPhWo0LmF752J3xLa1yjs1U=;
	h=To:Subject:From:Date:From;
	b=RhOkgQpUeloTlFaUpHRl4OrnwZIHkZrQvnsuZH6QQIxOUV0IxpG3LNFMzQHyKbYPA
	 abN3iT+RXxHnsx+uP6RcWcLXyOOWcUpAl1zX7tQp9mKXinF7Ghb8/+8Dc0yOcSvmjh
	 H7IwOhBhaXCUOw3a6/kL+J4OYcfiXEWcyugNFDJy8D6v2k6MpDsITb7iMP5YRdiNxc
	 Ijj9g3/qWmhOO0cnCI6W+oXoprmx7VUxHtjamrtQ5aiic+g+yX7wyp3klp/TrapyDy
	 Qv1kg58QqykbUE8X9HYSog6oTtn7DJ2/+hTmI3A4GVH8gI1j1iYRo8eHzjF3AktIAq
	 qYCEWpl3Z4ZlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F64EF99E1
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105269360.2038.8881898468951811016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9590991970d527a59278f97e7110abc36fd4540382653b6fb0b468f596d7072
Date: Sat, 14 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771052693
