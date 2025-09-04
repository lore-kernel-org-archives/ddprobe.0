Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C32D19F127
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756957794; cv=none; b=MezRlwS1oldx6jwLoOF12KFFChhaTnZ2+EjbO0ZDpC+EopMB2YPvv+X53Yze4OWJJsrw4EZukaoUzGV8WZMziVS56nKEcyyUnJpgkkUxrNYGtX6WoazG/S71F2nteVb0yXOIXkZmefXzN2Qu9lSbdsnmoSXuETCGl6g+7I1V1ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756957794; c=relaxed/simple;
	bh=HR12bpbWJY+KQfSjVCfixavS3nemUiA8pXGyfyA8YwI=;
	h=To:Subject:From:Message-Id:Date; b=ONxJM1WQdqbh4ZEH1CfmTW4nfwGp/nA82oSfTICTfVU9QwS3uA/q6llS59RaYj3SirjrAanAwfHubVA8rYe6AdTrX5x00/UGiEKdJXsQzVqttQU6gqlhJVmv00FoN0k3j6GHKhN6dmqOPVVKudcXrqbGsZVET0CtiaPoDNsIp70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2jfCr9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2jfCr9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CBAC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756957793;
	bh=HR12bpbWJY+KQfSjVCfixavS3nemUiA8pXGyfyA8YwI=;
	h=To:Subject:From:Date:From;
	b=V2jfCr9BHSVlZI9ksGU5x9xIRgYCxni9ibgGzzqGRUzMQR03eZ5N9AzFk88xQqYTL
	 SC6b96CRYCN2EAH/l5j9W9VHkaXgnp5HElBicZrBp8rv/DCWsLVXTM/lyQJRdOrejH
	 rK3WKe91a6NKN73QvNlLLjNfQMml3XJpYrB+4DiKpNnEhVjp1Tbu9wzuNDj9MF6WjN
	 ApX96iDzjRoGCu2nJtY3jD5AG8Tfs+PAQKGD1G1GzK9R4s08GTmULPg8d+oAh6QI0e
	 a2OZzTpqHow7ipvqaklMsNgGzx0mis6QPsgqpWNqcuRDciD+o2SMBKTRp1Amvq2OxA
	 Qw1EGYlrj7RJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93788CA1014
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695779358.12701.15398696199542555447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22e2359ebf855808056935e1758b842c1bb41398a3296213e2078f9528e09f9
Date: Thu, 04 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756957793
