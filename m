Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B433559D6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774391094; cv=none; b=fRZPGA2fFxC2qUMLQSY79ZkFPYcdTGe0KG3Aqcn4RHftyOU3Xvs2WaVwchd4EuANQMX1MB6i/nIDIgXeF3Dss6KbMaM0B2cvWxsgR4B8eOvuTmbg3fsXBFNiyoSHXIGM3lTNTkaii7OWo1JfBHdrzRZCF/asALP0vAt0rnD2XnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774391094; c=relaxed/simple;
	bh=AR+0fgcTpD+EK/KVAKyLfa2Ptl7qP2t++LO3Czt7rfE=;
	h=To:Subject:From:Message-Id:Date; b=C/eGZRXscioue8JaPBq8Ty9LzDM6Zd5xBUkeOaXbYyypy0u/5skw1cFO1WdDtXGBNETDTLLD3uW+9OdFGlTNmfjFzZhVnlCBmagBWGlAEa5cmi2qnNqE6SfCbK0P0iJ9+gPNGU9m5i0pZUSslZCaXBdv5xJProu5Coh+WHPiULs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUm189FI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUm189FI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5FEC2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774391093;
	bh=AR+0fgcTpD+EK/KVAKyLfa2Ptl7qP2t++LO3Czt7rfE=;
	h=To:Subject:From:Date:From;
	b=lUm189FIxCYHEJCOpT7OYdeG2bSqOyeoc1k+48x/UJfMNgTxRi08yXNO9Gi6AOVWH
	 3bjw0yqjtcGKPJFDDil+kdmd7qqYIl0uMRqYNZf/TwPV5ZNZ7FpeZl1/6F4RxDWFcr
	 E/E4a0VSXy2II06gYWiy4fNQaZKWStU1t8eekdVm704VdjACgF/qRkNzU8qiLa5okw
	 L/nbEaM/zze+1j3m4Lbfl0/rjA5kBhoPV66WumC3SYYL/zW/SfpJd4HWaPGIU2o/TW
	 i96kD5Wg7NnqvBa1+Q3392XQvgAm1vCbneRJn/oyld7+qjAGLXpeMPD5xwOtqjV42/
	 wSmHa/3vcmCvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991CEFEC104
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439109359.18657.7586085937339978053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc603365ccdffb501d88cb1a7ac2eca26bd927ccbe11d53abe0e5c668a77d857
Date: Tue, 24 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774391093
