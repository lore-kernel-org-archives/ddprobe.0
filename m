Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DD1227599
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762517994; cv=none; b=amJ0SnqnIgVaHpeoI6EdG4FphpzNvj6JnWb/Ii86lr3WEo7mHyFSFX9TLf7Zuf4j/2h9UknGfT4Sa9WNEJLNUNvRF+EohwKIX0fNA7jkDZArd4GgmUwWY5PaiNP2PQX3nuxEurqVwQHKNZWFrM8m1zbnJivityqeFyz32xDNIe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762517994; c=relaxed/simple;
	bh=sLjYqcmywABiSyKcJF6g775wUpJpB5BP66ZumrY8WQM=;
	h=To:Subject:From:Message-Id:Date; b=NzlCZeo4+pJOpePZghqXoN/K8pdXiysArujgrJGjucglFASVdFc9iYTaKuKiT5bMj2YIK6YayFPyqN4q/T3nwV91u2aVYUYNTKCDDRgotFIam8GHM4KkTpP6PITHpjTRqr8K5OkSYFf0H32ZoXyLr/+JA/NyC44WVqcDZg0XJTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpHABtso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpHABtso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C692C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762517993;
	bh=sLjYqcmywABiSyKcJF6g775wUpJpB5BP66ZumrY8WQM=;
	h=To:Subject:From:Date:From;
	b=qpHABtsoNIsdwrhjUfdV6Erbqim8QKp+0x7O58R6MTebq38s5lb4zC6KfFTD4qT+i
	 G1GK2ha09BJbiVBh4kPA5khPrBJpFrT7O810vIa/DfaJX/1aE8bSTvrKDcP5qGdZgE
	 0rKrK7ZNNo42RnmVfDL77GPDyLPg8PJr9GRjlloZlTXUNyKlXPvKx2zXu39+T26KsV
	 DWyBTbDfBLHQS3MqKyqLJFYsJu4Jrt2cADYJWgD8JR9RjsTe6AP3RPLcUt8XLapDMx
	 d9dhJFdUlFuVW0Ps962vSGgZw71jsxgY27JYvj+kTl1jFTUzBU9SQV870b4ink0NZQ
	 vYPhiUnHDLrKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF1CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251799358.9052.8567462374737128517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d1ed4c283d4f3dfb887fa0acb95740df9a7220256a4fe10f513dd5b318de72
Date: Fri, 07 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762517993
