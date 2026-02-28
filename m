Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CF619C553
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772257494; cv=none; b=GFpyxugCjOq/MSUsZ/uQTwZEYcAXM1SXtMHDuZoJbQ53N80ThIvaoMNlnGL7YVWwdvoO+BAB1w2MW8r1/CtxaS5eiu4DPHO1xsTj0fO/UsDsK7hpf7iQszKxyb59G1ETx+KkylVWSZqV9UcPur66UVJ2TlDXD1EWAoTHpovx6jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772257494; c=relaxed/simple;
	bh=bqXIft8HcGgXWyadBoSICotdUXxhVP4611Qi79Et/20=;
	h=To:Subject:From:Message-Id:Date; b=UE/9eS0HxPAZJpT48XCl9NbGAOqqKQdPSXHBYaGF+N+HhNAUww5lxBtzoZLJAEZhnROWKAhUiHpJ3GkYCKLYfPZ/udDwkE7eUnP5oQbZu80lEz9RXDGGVXSll5J9ZFGdWuOSG1et79jL3DkKhVn1UOb2jZ56fPNfbqjZpz5PMlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbgNr9Uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbgNr9Uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACF8C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772257493;
	bh=bqXIft8HcGgXWyadBoSICotdUXxhVP4611Qi79Et/20=;
	h=To:Subject:From:Date:From;
	b=rbgNr9Uqljhn1Ak0CUQVUV8fOYUAJRnZdiWCPySUikiMYq7+g+1inWYgY4andg3RV
	 MUQEu3H3mVWRG4ItcbUv82vbVVEN5zAltaXh4Ot+hDVebXJgSMagQ+wNGEOvzSV+Nl
	 2jY1txYWLbGdHxQC2bhxyt8psUOB1l0CUE7bhoTEdtqf15uJsS7SuQAyN5RgwN8PaC
	 XC2vfJKTlg3z0JeBdxvm76Wf3NV5h9yzk/gfVoVDs+EdYfepLZvLHbxDDMcHZ/W2AR
	 qR25j7O2TGYT99LjxyzOChAEQtYS2k8445R2d4Jy0xO3OHobp3gwxZ23MTmf4WKWUv
	 Nu/sL9ml2alnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9611CFEE4CA
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225749358.28026.6366672818707271287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b1912fb63b59e4bab2f1847db051f8399b7cb4e21ca62bff1540ea7394e14a
Date: Sat, 28 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772257493
