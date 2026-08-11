Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4138F3F1640
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786474834; cv=none; b=hzkQAaSqJudthAPkLxodLn3a7gZjgTOstZxoKBuCi3laIf8NPQfGujR0AOqBJGyGxQTEpseNHT2QW+m1A6ERnOmf9lWf9ZWhwuwX+Nu1+nl0XV1xXdWKG5PKGx1yicsgp75jqdmLcXlEX3VoRHhhwkYTnHPqLbQeL7xGyWs38D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786474834; c=relaxed/simple;
	bh=5kkWWTuRrcEdaPc3IFSnt2uflK5DD6iF1toJgHchacM=;
	h=To:Subject:From:Message-Id:Date; b=LoMGk75IgIzR0Hip/LiW511N6ZsO4a5z2lE6xmKac3j68VWbVrDIgcv25pgog1TBoWH4yFsK6YMilWGMrZKbDUFRdBLjVaezGv65ETWwoYVBgasrX9Yl7Q+kD82HZOLWrvXSKdP9HI8V7pOPSrj/G7GmU9D8b+GtYcIFdYTx298=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9JoImZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9JoImZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB94DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786474833;
	bh=5kkWWTuRrcEdaPc3IFSnt2uflK5DD6iF1toJgHchacM=;
	h=To:Subject:From:Date:From;
	b=D9JoImZFZFlI9HkfA/6e3W981oHyV06jkpo5+u+pEz5NpLs3JsZ4lxV5fPAzB9mBu
	 yO6D/NYhqcHJrjYLm7iUoZYjH+qcTNfvNgHItGxg8JPfGWVhLQ32NWOBesQuLTFf5A
	 1vVVAfXV6C2vQcKoXQUEg3ZF3u5Rqa7VEF2nPShPcTxEdSTwT937gB1kf2LgTqOoMa
	 Qhfg7Pe+5vGpbVUXzeCWH2JK2UKQ5b20g1qnNEOS2AXwF2Iocl882PcoLxxrwm58d7
	 AGEIkKTeM55GCqNA9CqGyOcJ9u7hZi8JtHchHg1+06Y25aY4Uc0BpgwDLXfxMCg2iw
	 azpYg6ZLkZJCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93E4C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647483368.24402.11219693654408734466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e746ad114c187a52f2160f35ee539b9f55c3de5cf2d2e6bc924fab70bce671
Date: Tue, 11 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786474833
