Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E7824F21
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69302C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667413254;
	bh=TRPqr09VHGSnBz8z+ZxC2tHSOzO2KGVRuqjmVWpJ8VA=;
	h=To:Subject:From:Date:From;
	b=f+6HrThN2vlMvSNkRyyA0eU6snHNVxo/BTOFtbSBKy4H3LV6e7aWi5XXY16p+dPNe
	 efFkK7/mogbj4obHm7RsWOt3p4VuUCKwZqNe9s7CGQ3RNIPCHFLct1rcVuQkhCAJ01
	 EUcXLw446n8kVVBtp6iTDKkE08qSPIck0d9oUiB+L3zWUTBJ1h7Q3tSdDxgBatXacz
	 EjeGNfrSQmMjAxysZ+KY7bY0bb0AMkMyxqNpNa9nzMrmKNaK7+nau2gpJo96vEMD0q
	 XVXAneX2t0GDLKXiOUw5D30R6qidEQ0o9S3TtT+HyRJAu2m7X2CS+ivSmjMj1FgArI
	 TYJi5vHN/qn6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525ABC4321E
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166741325433.11805.7265227476066848417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d456f20ed9886038544265a1b50c12bd90706d33929839bb1a4184051d94abb8
Date: Wed, 02 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667413254
