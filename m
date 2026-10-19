Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5747348489C
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792398034; cv=none; b=JEdtbqVVUKHK/RfDGiWyZHdzCVv1lWFArRjOexijgT1MXU3s9T4wUtYAENUEvNpGicUxSiIlwf3PS5zWJrz3RjZK4he9EZy85Zs6nN3Tyd8G7SvYkzFdeoJ4/MyNJPrE4U6dtG9p26fxT/pvlhIR+NoJM7z2WVyK7kdXXdKlwsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792398034; c=relaxed/simple;
	bh=eF+WAF752Xly0TFzu/dw1U8vG5u3CzI+dTIvfklw4a4=;
	h=To:Subject:From:Message-Id:Date; b=X/D8JB9qhF1L27mhcttbRy3HZHq/y2Zuw08UkZy/1UotKT/Xfhj/kxTP2hLxZu81NU2MCIzBaA1Tqj6lVaYo8Sje9JZMP4j9skZh11tjy6hPYsa3uPDNO/x06112ECTCREpuf6EAuijF7eZyToRGWhGsIf6KRd9yb6YtzJbcsVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4OFOz+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4OFOz+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF649C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792398033;
	bh=eF+WAF752Xly0TFzu/dw1U8vG5u3CzI+dTIvfklw4a4=;
	h=To:Subject:From:Date:From;
	b=E4OFOz+gIJh4qdqu8ZuCGv9olgl6lGqRMmGLN5vT472z6lEq0rk8njjz62OMp9/qa
	 0RtECclFWKeNTxNKxTUcqzkS+T5rSJ09eMjQ9Eg8I1+M5r1vlsn9Sn4WChZ6J1WsQM
	 l9i8VekFs9nQdeG8Vcl6uH0Au6Fl7juPCRpL4Vpuwe/hI8FyBRzautugKzJayDW0EW
	 Tc8VfsryIGEyOzPGvAwsyM23A+aUYpH3FEpElrYM6h27Ip6UgEndZymV8E2o/y5O2e
	 tZIn2Yx2+R/0fkfO/c4tyMj5mo7kt6Z9/n8TkewmqLt4gXhlp581HgHWfa+vNtlsgK
	 OddD0o4nM3xRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF4ECCF2D3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239803369.6257.807398624283670967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107478c030272217ef17a07d8707c2e249d1710b42b5146b9440fe440377f873
Date: Mon, 19 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792398033
