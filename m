Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4FB46B5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776197854; cv=none; b=Idoz8kPni0KQSAOn3yUD4pXs3ihXDXym3fZoD/gu0R+CMExGYbQPIq89SHi8Ogsd9Qr/jjdt4cDslGd6TzRCl+p8ebE2ZBvwVCNatECZjV9az6Lx4pvyUde9WmYLlHF5iFlwTJDa4I4FpPn5u6eJqrYgfYl55TA8+1+EwXCnaYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776197854; c=relaxed/simple;
	bh=U5vd4ac3h2AAZhTcWNnwfsMnSmtYRefwwC0nE6ViuN8=;
	h=To:Subject:From:Message-Id:Date; b=duUNJ90YzOp21cT/uys2UBFR2elAqLAECRPda+86DkwiYfR96YN1ExJrdQPUMWjBaPYqx18FWL3UWjSda9tzPcXb8TpgOf/NTEbHDcStqZFdf+77GkSgY4gSuM1jYLWSfg+17B2whLdR3QezHrUeULKOM18W1mpea0+c/Y3AFDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXhUUOA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXhUUOA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C126BC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776197853;
	bh=U5vd4ac3h2AAZhTcWNnwfsMnSmtYRefwwC0nE6ViuN8=;
	h=To:Subject:From:Date:From;
	b=tXhUUOA0/5WRfaMMCXzhecA+uevwpWJJe14bVbWv4vjlFecF7ph4GfHmbsPH3PSmD
	 05tmsZ8bTHmtEDKPJBJx9VZpn76as+hUDvK8eqbViBG0B7wWDCS8L+lhlf49BJBNta
	 z8hIwLA01ESNqQA4AZwr8/ECcFj4VdVbmcZrWxU6zFKAmSqeBY9cJhyRKVEYLFZgvI
	 SSz6C4QHQXdOmprIFeB8Jjk2q3wBGKgcrEt8oi7W/NHoXdlnpTNIFMh5GXo0M+6bMY
	 nSh0bbhY0XxSDgwSL2W6Li7jxV1y3n2vPEGxmnrvnX/FBZ+OYtyxeWciA1facHVSKZ
	 Kke+k5KGehodg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF321F9D0F2
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619785368.2147.6567483704426263676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d349be0228510da0bf552faeaac2bc772ee44b091d98d62a0b2ffdbee489c657
Date: Tue, 14 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776197853
