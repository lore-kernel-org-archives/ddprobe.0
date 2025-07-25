Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04B734CF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753473593; cv=none; b=AfPui8IVEZ3uz5T9B4hlQb2+jVqiDj0zVz31L62ZtaJTLCbp5A0UAk+MCbO6mlyOX0KZX39wZDr1BmGszVPVoSWtXpRvD0kFkqIJNS56kqZml25WtYuPg4Sycfp8mKX1EOQ9bk0jw6bYCmhsYNuxMwCI28wc3E3tYlZW39/e0lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753473593; c=relaxed/simple;
	bh=grfd0PB7AVg958EHwun/tttb7ofAg/5KrRDNbByNUv0=;
	h=To:Subject:From:Message-Id:Date; b=OKuEgbzVIFSsQu7pMQUuSL/1YfsKZK1Hcy9EeI/wns2uS04AIlgq2Pw/kUXwCZjG2VfETam3iWuVZg3a0fs+ZgFWsrNWQ3TqVzXVP1/wFLiH8eVMnhu9Rxzr/YDz4xQqUGuSS8DmqQWtD8PPkpG3KAffeoFgGe5dQIs46K9/ddA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dj3RUh/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dj3RUh/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBCCC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753473593;
	bh=grfd0PB7AVg958EHwun/tttb7ofAg/5KrRDNbByNUv0=;
	h=To:Subject:From:Date:From;
	b=Dj3RUh/JaO97Nti0814UWPpfUQECFb2aUm8+OjW/K/VFhvYidEpOvyze1b2EhldyS
	 Xcymb9QTAwMfCZouHUDhU0O9KSOEhjhmigfr4NHw39SzDr20G/1i5aed/a/spELLMS
	 YXdVImZWSx6FhNpq68oGRAvu91Sz5t6ZYmfaH1EbEvHUJVLVHjFvU4GEoVVicd7S8f
	 CavKBE82TXP5x71YGa3pdiG8sM1pRGCHeW4TBnOLpBpYBGwy2gFbo0J5zdwQ4ELyMf
	 TrhA33DjQtgdpwYCS9n2tWRRwNAh9Rjs3hTpPOUsEhztvU+/ue4QG5qVMhd1tp6xQe
	 5qs02Dx/BiX1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B4DC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347359358.2504.6691053932003802944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8941003a3851ae89f72ea25ed52b3a1ed72b685bc60357a119537cf1cbb2717c
Date: Fri, 25 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753473593
