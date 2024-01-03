Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2F519BCA
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPHJT77/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 923B5C433C8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704290296;
	bh=yWzJo5G9vCpEWLh96QRR+4rQKJrky6nNdhqJ4T02+kk=;
	h=To:Subject:From:Date:From;
	b=RPHJT77/+pHADuJ2jqc2vSSVpKP+BGz2QLRUkepex8uIWiaoMOSKuorO0bHVic+SG
	 zLz8zBEcwcjCqod/TAiiGk+SC5dcYZP9eqNrA0ANBo55fJeY75xLnzf94+PfJUki3z
	 HzZq5hZOItjFS4Z11/jBRQq1LSwb8+RK67CFuc319N6BljdidNoda2VngzFSgxDliw
	 BDL371x7vdGpVMYSf9uWFnFUyxiFx83GuXhv+GDRKP2cTtx2D5V3knzPrKU1O/FdyQ
	 f32HfCNyIwMe1yCxCpiikmIZAnhYtXVnAsxwU/hT37wWfpxXieJKG9ZqHLUSPyNMP5
	 z0H8ni8tFOKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75012C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170429029646.22243.10807252864741366068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf809ddc6152e676a9c3ac96a231815132131c94bf1fd1d5a044826124399690
Date: Wed, 03 Jan 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704290296
