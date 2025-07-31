Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3484F376
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753991994; cv=none; b=N2l1coLI1tyk6Giky3G54LsGXjvL0+uC+KrTpA4Wmdwq5/oTeww2di72UsOK9piBgLzS8/UEvW2bZf2/1XVTt0wNjko1KDzBc3hfNSArkDgDEcIZJGP7yog3wU3AN2171fTUmHcdaOvpoqwvSQLYU1PHbEqxS/1sF6H8Tze14Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753991994; c=relaxed/simple;
	bh=tZiY1m9cenieugUbvO1dQViJMxALL7Ay99XzcJWw6ew=;
	h=To:Subject:From:Message-Id:Date; b=j1kXWWXHodUnA5TCiqE3aQTzs/FKd4MnNmIo8XCySOYLWdB+lQv4sULID5FiM3R+iiRHxqW7hrD7vdR1NvWwjXsU222MxgcBC1D1UdDFHEZ6JS+ASNWRK7lX7NNWBBkjForYlukqCfIROGlzQe5DcQYlX1Zr2u8DJtJ7Tm3WFbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mj0t1QeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mj0t1QeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9956C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753991993;
	bh=tZiY1m9cenieugUbvO1dQViJMxALL7Ay99XzcJWw6ew=;
	h=To:Subject:From:Date:From;
	b=mj0t1QeHQzR+hCCK2HGvrrugJMtI+G9QOdDCogQGqq4ZuENj6mkcTuZPpFGybop0L
	 fwQSCI5jU1FbiHZXFKV28HGUtbkWDB5XQn+EAJGSn0u0drlxnKnhbpK1AVCRzJs4dP
	 oO3Aqv2Iol5UFzqrJXOs9YL+cWtbEa2iJfz8wY0tawlUmZa3Xy+IZhD5HvbP+0BwhT
	 GJbLAi7e6gV5s5ZUezScVAQ3dMLblPjCS3Ey4fZ2MKYQJEpjEZP8BuOmBpHQ4kgjSb
	 PR+sEFnHANBdLiy6ql1wQdWswxvEDM+Ng86tRNIaz9Ue+TcnBXRQwRq36uK4pB9AVc
	 DXx+BDwFw0hVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97647C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399199358.32747.12884923744179048193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c5361c378432a7d972716aa703816de589be5ca1ae6992d8cf63517eb37af1
Date: Thu, 31 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753991993
