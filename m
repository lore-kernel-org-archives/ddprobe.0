Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A77450F2
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770620634; cv=none; b=fI+zKfaRF+tz5B39bd5CoX74gccA7xC0Ae9wP3vtFoeRNQd6xPs9GkoiJUE1g4g+6aNKUD1oeIWoA9/auUKYRJhZoTUr2C61gpMvpcLnDErk9+/LmDZUxfoTFTGzc3fywOK26s7Wr61m171MHCvIqDriy64G28PQJKJQYcj8PzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770620634; c=relaxed/simple;
	bh=tAYBMdizZeWcLpZf6vUqk0UHvnVgX5CLGrs3jqHRyRg=;
	h=To:Subject:From:Message-Id:Date; b=j37izyDM2a2ZyJzefpoxjt6XHvO4Mr5+cFWOs9XBL8HJFdNuyxGCuC9Otq3fS5+pO0wVtmOmXhAGkKxDYDdd7lXcX7viHRaMQR5STB97STwkEzEci6nt4Ahdgif0vlOJa8A224qUFq8MvKeCvRSdTGvYYJ0HSidDr1l29rSscSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jk582Aws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jk582Aws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCEDC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770620633;
	bh=tAYBMdizZeWcLpZf6vUqk0UHvnVgX5CLGrs3jqHRyRg=;
	h=To:Subject:From:Date:From;
	b=Jk582AwssD0dawuYB1UO4q+INiJs7HsFX3ssn1zbLlaGqMd7Ts/m8qtVaSbv1IjR0
	 IAl3yD5wq1PUp/VchcmD7ZsnUiC+ceiC7gl7Ntl8pnlBUyyZyj+PM9j6xSu6y5JS3N
	 SFofUQjeh3+QCzEUwPyc0lU/v8rwSB9ZXLKL20Xbt3E3WF8YVdRkkWmzKZQZiHbQtp
	 l/Oq4AuMU/U3g8wV89hWqvxb18TJcnPSnosjpGQnq30c1boZw+jSAY2G4IrQT02NJ2
	 +BWZPqgno4P69UscVKzdI4q4wMj+Vf0rbfyNchuek9NOdwsqMlruNGZUM8jw8lJoY1
	 YHtlxRPW0ri2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD3EF070F
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062063358.31340.13747925118994667312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1280fbaaeea1f245e73d351f72311ff2d2938103407068705b71d08e98ad477b
Date: Mon, 09 Feb 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770620633
