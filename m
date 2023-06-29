Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C518489
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1788C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688079788;
	bh=oAu98FFvWbwDmW4P/FCa01HEG2PEapaTQi7GgVBcZuw=;
	h=To:Subject:From:Date:From;
	b=NDtEmBkdXJFYMAFkhFj3oMNGFT+2HPsGRg4SVbIL01erXFiwacKdV1I0g3l/mxR0D
	 +wEQSOCwtgL+T03EzVPwOKG5GvtiMS05iqQC/oy5A9zbIka12fcOmxZ3Ai/7DXz7E4
	 nuGMJCt4qQjd9r4OCk1gH+dfpoTmHEAGEvsehyOeXcleGzuTpinFfrFbxaNByXFzES
	 8ICLbqxDlkqn8CN5G8AcRTw/cPYVJgu+HpgeZ+YCMw1bANCEWY2GIiBXif2STsuRMb
	 C7A2lfqVg6jsy+xGSPPw/wOfCrXaDx5ummORDbMn/pirgR0STwp+Lj0Y7W3ypRJmlA
	 m7rxoxCz3+uUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DF6EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168807978870.2369.6044103616779380013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302d13551dbf4b2b7464368f326ac3e0dcdb0587827ec1c418457237e22e30df
Date: Thu, 29 Jun 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688079788
