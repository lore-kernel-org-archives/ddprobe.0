Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223D02BEC4E
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765221774; cv=none; b=Wf9dA98s1zxZvCLGmhlu//M+0zxKLb6pS2JC6uYYtubS95Lml3P5FqqK2Pb9RKH/7LocCgftO8m1ZukDzT8LS9ROaEBR1Bp5q7NardC7XxFU+ka2dldAInooctuKLkNwL7MZMiEDgBcKS3tkLlUgHMfU4ksGmQYXmw+MgLXhgzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765221774; c=relaxed/simple;
	bh=9T+sWIFpH6RV73KvlN3mfPYNTc+EvZr77+/UvBKViBA=;
	h=To:Subject:From:Message-Id:Date; b=cNwwdChhQ5hdU/bSeRazEIe7Npx6VCUuBA2xeNmcigz11z+QuYOBf2Wl1BjXMYp12xPoGbOQPSRjV30+Mk/xBhf6+vuK5BEMNSMtru+oZXuQbbHPqG53KAg5DMpQyHLx6D1gxXKrbugn0amLRui7e2Ce2hnOcoGxU//11iSr94U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXXsAlY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXXsAlY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ADBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765221773;
	bh=9T+sWIFpH6RV73KvlN3mfPYNTc+EvZr77+/UvBKViBA=;
	h=To:Subject:From:Date:From;
	b=GXXsAlY3rcwWLVoGKNZoSOiUmw2IiJIWOL/2EQkoZAMbQBvRZlGKSYThi5eKIobai
	 tlJb9Dx4B727ACJtJc1C9z3r34O7uzbOFsgOUk8VITp1omcpYh+Q1Dmiej1+kTbV2Q
	 olxDMDXvMxAHCHmh5+RS95Mi3cS0X9Ajnjuy4Cm8Mu7OblYw48BeprggqKV56biU68
	 gtjLJFGpjuu9FhD8EOSAGABO0dM3p/GM1hcR9OIDmLuufKbZ0kD1ENd2aWRzODcYwZ
	 ydhBJXzOqXODy79/g8XxK1cqyCNq8G0+dRASyzv6YLblGCMsdTwTrP/BPLMFbZw0jx
	 vTRS3oUHaBgTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90418D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522177358.4375.2937617418064003071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3d4322285972bb635040925f6723ed10d8db00b736a810405557be258cdd87
Date: Mon, 08 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765221773
