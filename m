Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3771DDF3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764966774; cv=none; b=nMJpbxQaGFFFuLxeNM2r4ch6mvC4xU6X5mZ2SkfvvCeqAbdjcjAc01d5Jjy1PD4pgw6lkOQ+PnPUQcZMp93/JtCC2wYfiek9hTf+MCptBa9uWBRMyzIGU/SsjW7o0AIphpUYmwrlE4sMuVN/tXnp1jeYi1VAPR0cyj7dPeEnb3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764966774; c=relaxed/simple;
	bh=liI5Q0M4zcVw5IB01b5UzjX8WN1E9uwWpHFRjpxpp2I=;
	h=To:Subject:From:Message-Id:Date; b=a5mei5VV6q0zFgZf7IRdwwI1BN66WdcWijwiKsSaqWQaBo5vPLoxAeJ7hIEtAMHEkSsI9RwMfDoI5d/oD/esILKmu6UTFekiGvZ+Vs2TaFrg9bGok4pti63XWLrDom7ETWOJxHw/0IWjjGyU+32PMWKdmm6KDYYvmxU5YeFN+EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBWm8lvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBWm8lvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB389C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764966773;
	bh=liI5Q0M4zcVw5IB01b5UzjX8WN1E9uwWpHFRjpxpp2I=;
	h=To:Subject:From:Date:From;
	b=vBWm8lvuk60FxC05jXuaLosAQPu2/dx+ENWIO+S+lxAeRhtXYqku3JohLdZgHxEFv
	 d8Hd1V9KTiM9eSwgvakNrpu9cC5AyJM2xcshtZGYf+EjcXI79TuWKHKfgtT9e3FUIw
	 iwnfeNPiB1yqXUW4ZCx4Vt6bbUTWiEtPHxmw8rFDODCwbSQcisqst7aS/swx8cRbD8
	 KcwE1sv/h5eu7RVmJDoQMvWOeO+CjVxzofyjNP0bKZpll252MfCbBS0WioBz4ZlYRA
	 Eoy6JpH+ZKKdZ6W6vYrv2SbEfSTuUYGKtNJYqC1i+wJHf3Fq+a96o7s+aq8uPnwC+G
	 pcrHG9Z0/S7BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC40AD37497
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496677365.13758.1287704478629806997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110f8260408eb4605370e57d077822825842b87eaf74e8dbce7e7cfc92a05cb5
Date: Fri, 05 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764966773
