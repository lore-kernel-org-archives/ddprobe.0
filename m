Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E6F46B8
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D01CC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669994454;
	bh=6hVzp7k1Yf3FbHCeFHsqtVLTA5kFU11dyhTVvDv9NiY=;
	h=To:Subject:From:Date:From;
	b=E4H3u24fxZCsWfn0Bcu9q+RdP/fFSVJrzlqgSjsDFAUx7Nr9AYJ0kjz7XeJ3eRQPQ
	 KrD977PHgRcRthjcbGTH7WIgionlAbvwQIieMj9nsTTB5Ln5nhNSMYEEebijlq4RDr
	 pDSZ+1vZwReKz2byc4pHu+NvU4CU8hFwUP4MMrtactmGfhxDyQBadN+XhoWLiwcA25
	 O14rDa32nv9ZltNdhH4NoSFkgRPhtOpY7I+3FiRDgkjsW9T/qHJJdcwFp56slmuNZI
	 JegyPi1FxrD/VMrvZvvdnUCzVt7ipsnPAxNggztAEUElHbfaeMx7WNP7WBtnpiD5XI
	 8EFX4sgxMm6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5150AC47089
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999445431.527.3798241561940287673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fd869e7bfd996ca0344a5a42a296934d10c5a2749aed5af4acb4634e3ce030
Date: Fri, 02 Dec 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669994454
