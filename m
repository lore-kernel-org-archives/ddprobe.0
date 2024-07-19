Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426CF2CA6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721405154; cv=none; b=YjvEq0j4K7umCf87sDLr/MsLLzezLcAqDcD+YPfRddVAIx+lcJTxXaf4Qpplpi0KO92WJp5y4UXa7EB9FqMK/w/zUhP+OgZ5xitF8pZP17dOdvmqMMN2r02Xla2VO7GuEZatY/uT6pUnDJ3ikgEN3QhZ/h4SlsYeMTebf3EsLdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721405154; c=relaxed/simple;
	bh=tsWjaj7tnCNTvIqhUQ9KZkMpENfCIFDfpQjR4oyhm0s=;
	h=To:Subject:From:Message-Id:Date; b=cbgi6wYiuKDT+w9DJ5cWURUrCZDGPMzESVHGHb9opPcmGB5rqojtE5kOm8Ua+oNVeDK7MlRAcbzLUvh9ETE9r60VmYghrdruhSGFuoTd0P7aqQxle7Jz6jZNYdzHA3yLlkpegjuNbs4uedmpCdVUNgGzx7372WNJdz3fQHV/QQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aw/eGVaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aw/eGVaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE29C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721405153;
	bh=tsWjaj7tnCNTvIqhUQ9KZkMpENfCIFDfpQjR4oyhm0s=;
	h=To:Subject:From:Date:From;
	b=Aw/eGVaLcDjDLm7VwJuFcK36Y+Y0xTp5sONQBHvfMTtIr7TCdp7x6YGY0AnSJ0tNv
	 xLRc3Mit5RRid27/0EzJ5q4oM/qN7f667iA6A3toKNl+H2VHn/RFSXS5W26R/QVr5Z
	 VTMD3sK4JWZTcAYZzhfihK1kSQhsKRUBAKz+dpqYW2uKNH948FnTa2k7Y7Xyi52LpE
	 Uee7ViUIqdAqCWosGTbQQFri40D8k4uMftPTDoMew4GJwwFXhnqI7QsZgy5lwAC/Jo
	 OWxM/TcmWwfIiQJQ6HFTY7wPadNTCmV0ZenPsbeaBAHcdHRZaXoi3DsyjhkXvQSvX0
	 nB8H+bw9iz4NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971E8C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140515360.5865.6144395931605827873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1479a6ca66819a78556a00f6cdba3ab3016fcc2951cd959f2acdb29c85a94929
Date: Fri, 19 Jul 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721405153
