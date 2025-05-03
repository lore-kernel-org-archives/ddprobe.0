Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283091EEE6
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746259194; cv=none; b=Zenrm9zzUHQgFuK6rAn1kY0FsWLfQfIyWfqFuprPJhvpgv/z4W2lWLM5TE2OWkaNJYCJ7ChUux8OTmx79yrs/NPOwbmITU+PxT0jGpygFwYqMblhHYiIt7vEEDayTKymfTnE/0vplucP5uUcDnO2eKidfFutWdyoQ17yrBCjkHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746259194; c=relaxed/simple;
	bh=XZ0ZP1qD23XzkDKEbQWQ+PUofgxYjSMzeh/znywrqwA=;
	h=To:Subject:From:Message-Id:Date; b=tsslOWuJARxulZFRG9kUf2ihozVyGt2ssCZHDFgrA2fEXeNu7DOOn80nwRAFNENq8OacfWzBT/i3VCMCeeB4T6iAd7fb4eLi3EXLErqLB3McGguANdY4N2bOWfuNZXiNxvai6BhYD7yvt1J6q7614yV20UR7LWnYPYNTj2Wvq2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cg83negB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cg83negB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCB0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746259193;
	bh=XZ0ZP1qD23XzkDKEbQWQ+PUofgxYjSMzeh/znywrqwA=;
	h=To:Subject:From:Date:From;
	b=Cg83negBKw9yvrinnlIpkQVY3NSFrmo+52Sx3MdKfpAFxoq582YfPyO4oyF80TfWd
	 9ywo0ps6SdhLDkhHveQAVh3s5nHSTAeJWRgyco6/xxNnBq5972F+x8O4npfcqpTBO2
	 SL0krvo2+nP80m5Gx9PDv5thYn/Fn9TaSIeVtMOIMSkH1FiZB7t6zWbTTv8BXCfh8t
	 xrwf1SHlHewTWADEf1AqnRE8gD1L52sTCfkeZeu1K6z1EAhf3gGgQ8cCF9ZvKaRZdJ
	 V2/u+O6TMcDBW9W1YNHb7LqP+IzFUH8XSkkxfnsalOmwUDS+1l1WwA3/sjbBZkiB5p
	 OxwDD4DkAJVPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0CC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625919357.621.1728934030760641274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c880805466c2d46d640583594a1bafa61eae91e63d7d4a51a738221061001418
Date: Sat, 03 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746259193
