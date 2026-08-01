Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494E8353A66
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785613234; cv=none; b=ooJYJH/LqUcOR8zwJRO2+MfZNfD8LAeSN9XeC3xt0cE/MRFCz9xkq3aaMjcu7u8L2DgoMhGUfOqAXTRvHQZgzASBTPOMjmnwGwjyIBsAdTNpccvKQQdYA2v6L4C1bGt/SKFGXac3nIIyutjwNQvoQBOi5ttGCKKnQ7u1sHSpBe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785613234; c=relaxed/simple;
	bh=ey+N7pBDIlzkLlTYZ+VQPau0sYmvbT3uWM8Up8GO+QQ=;
	h=To:Subject:From:Message-Id:Date; b=Anc+EMbub57Daw5IMxDWe4OAR78T+1CuKnls3iuipXvk6WsovU5mvwgJHsW8TfgALI3NPnApuWsb8muC/+guI549zYg0IlSks3fzAxJKLVQ8Wrzy52gNTM+LwJG24E92jPmp9eiSRjc3FqM0gZ7+Ev+lkbilsykzFu3OT1iaNx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cioyuqsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cioyuqsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FBDC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785613233;
	bh=ey+N7pBDIlzkLlTYZ+VQPau0sYmvbT3uWM8Up8GO+QQ=;
	h=To:Subject:From:Date:From;
	b=cioyuqspH6X0hn7u9AyfWR+B14ZGVvY+XQo+XT5z3S6D48JHiEroYSrfO95x8QKlM
	 jrFryb8s7PcSK3neP/zqkJXE51rzVMF3DmPEze/HH+IeAL/McGqy0H+i9Mib/oqiJy
	 u2kIxfVWXQqH5hYCZtE5WbV5UOWxFmqPlM08h4m2L+qALRK77fIAFJvZYaqPO0pJIf
	 LWWTVFODFGNePcNNpxRE7Pq12adsUUhh+W4jVVMzyNQVXG/qDj8Deu1EQC9Nq+zucA
	 FbK08+9v8W7pGUjPUpV+qGHcyYYMy2CR5zeTALslWqMGrrjCSsRwtzJ3J8R/LjWkXM
	 nMkL6k1uquRxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9D4C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561323368.12941.15423086027137865341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310f75b59f5edae888913bf2efdf4dec128ba3259378c70b624a5201389dfe22
Date: Sat, 01 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785613233
