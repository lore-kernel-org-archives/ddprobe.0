Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110DF19D065
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772582694; cv=none; b=mwBtorEvebyrgPuLG1oquq+H+It8lKUVBHr9h09IV4h2ZYXSU74ckjDwUmRBkfYY4vDi96nFU8hLY9skzubJOWCLIPSxtstR3V2Ujy2dbSn6TSU/OqHJfaj0DFR+1xzvUIM+r0Em6lJ1D4GB7FJz/wV42pxyPRbiZCTJdKp1owg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772582694; c=relaxed/simple;
	bh=Ex5jDmMu5BACGj+62TtEkMnDBkXh5YPOAyaftcTwP48=;
	h=To:Subject:From:Message-Id:Date; b=toTAbntNt6IftJbXx8/jUJYuoEHNddZlBY7WUNQaWKhwJBRcn1xLCcjhugpkZ+H7NBDtEQrCz76jF3I2JV0Y+mJTtXI4dgxdyAtAgS2EKaAjpfbh1Vm3F2FfEa22sCd8CAgXSwQSWMZcdH+oJMFPfqSYWSHvISHce3bbUmTWK/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Im17VDl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Im17VDl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D70C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772582693;
	bh=Ex5jDmMu5BACGj+62TtEkMnDBkXh5YPOAyaftcTwP48=;
	h=To:Subject:From:Date:From;
	b=Im17VDl0lPS/Jx3OGgKWgET2a9xRGLC4h4VrzuWEtFCk+/QKsZSLP231xM/MRAuFi
	 wpjjN0+v2wVQVlbo8wnmRh9HHI1yBsVWsUQcR9EhimiTFof/YXjr33e0IHZa8UEHjJ
	 bfYJmESU2/eWnz6KYvpRzdMGIEbgosldCMYDPPM7EcWqtnHTUBp0q0KhtCx7SV/oUz
	 pwOXn+X7n1EhnHnWpTDF1lvviLFwDQuAkbiFxZSfmZXogtMRAwAzyxgzILRA0Ez5dJ
	 lwOsbXjQ5o+KI27OZnTWCQ5A+Qyrx6g0LH5LfqoAWOrsV85hI8N7yGJfPllRqHqO4V
	 yqFnbiy5kHqCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DA6EDEBF5
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258269364.8301.16653811056168549456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c0dc3e9b384dcb399442ee9c4521966c1c1ecf8d85639ba615158738d79f55
Date: Wed, 04 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772582693
