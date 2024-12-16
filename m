Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F421D4169
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734384954; cv=none; b=U5jtqD4jY9NYnVaUOtqGxMIWb5kNgdKhRxqK7ApUDB09h8sBEVm7PFNWs0PaB1hXj3hfzNDZSUIcDYlyrEbYGu4O3snZyaVWx5Gwk1iYTS7k7no7FDgp6IgTcsWin58iCR+yakiK5/J4Wdie6DIjcVTnAf19Xio3xLWrO7RIicw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734384954; c=relaxed/simple;
	bh=XNvPsfFn7h8ofJs+fgBjRLs3ljjFB3kOvWIVIx3s8l8=;
	h=To:Subject:From:Message-Id:Date; b=J0eXwrxju8/sr8Bq9u7FtT8cOuq4Mfnob42umhI4eMrX7EoeGBqG2vIu1wDEYM1MkT6X9VJDZu5+w3UDgasiogPOtWvCqGdtpI6G7C6vZXoXgyBOacL8sUCzwvddjA6aWORCjDZAfAn95m/DtHsY3v1/ipxOvwIzIGU9glQHlIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piDVBbry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piDVBbry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAF3C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734384953;
	bh=XNvPsfFn7h8ofJs+fgBjRLs3ljjFB3kOvWIVIx3s8l8=;
	h=To:Subject:From:Date:From;
	b=piDVBbry51TmnjFZB8nLY1fD+4UPHWwI9j0SoL8H8afueef1NL285gQ4rxDxfqx4B
	 8org3VLB7wZWSqoRQjWo3mMYtugqhu+oU+fvxa0t7exZklfALcgdrtCJCApKUH7bp+
	 u1wl9pB6R/K3HDdVwums6D88X0G0+amIbxfLxZFsapfc7Vriod7Ep623UtynGpjWqW
	 zOMwrAv1nhGbHzUzVQuXmlivEb12CkFVTqH6l9RutKnscREshRAnhOvH8HW+LQTwzg
	 zp+Kc5dgiIlLHPQ//5bhlgPvmgKdmzfVeAnaPqg3O6AQgRu30XrU/pbLylP+zslpVX
	 LLQa0mfVXwriQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9752BE77184
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173438495361.7852.9544756051291278963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2387275ce134b8bd6961b945a0af923fb1edad8d9a5b12d8b18d543ea324676
Date: Mon, 16 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734384953
