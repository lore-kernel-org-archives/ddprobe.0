Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05E146B7
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E232C43396
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673886687;
	bh=QKps/zwWwNxXqgnH1ROvt/wQcDneh+u0QkEryfDMiYg=;
	h=To:Subject:From:Date:From;
	b=qRTWKfHS8OSvRYG01CF1yZ2cuG0tEWP6c6yHXvFJAZ/AwFZ20DKffpVLZEbT76Xjr
	 wEZeLl+eE/bZ9EH62ybDns4xsTd7YyU6rS+ftFoRovOkPouS3ll1896gi4qvQ+JJSG
	 NMql/T/q5qzhTfmgoFulB3Z9t2leZWKDAlkaRAZPiEwATKXJ3+J//2yzKZ1pWvrCxP
	 Xp3T4vGiORuNMM/po3sjMLeaS+Qa/gNSJs7RN1g/aj5ywekZ+eVCEfJ1I94Jf/kryr
	 yFHQioVUDWRIUF4wiHYdDIEJg46NaBSJ9ZlfCbGZWURJwqN1KUIj3JbFnaTlCK2mB8
	 WrIKAaspVrAeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F006C678D6
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167388668744.17409.13823537270026248518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521df088a419be050bf0db38819a03a936beedc2cb61795318f9f523b3a8ae88
Date: Mon, 16 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673886687
