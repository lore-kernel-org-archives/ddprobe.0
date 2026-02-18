Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2363733EB0A
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771427694; cv=none; b=HYmxnUDa/igfx8eN4dbE2/p1Dxf7d+8yGq7rn2P39BBZMlErd+ImsX5a50qzb678DdxFo0zySHXGDrjVCRliPbUUqanc04I10l9vMmly+g0RtdPKrqxm2r7oWMRN5MPnG9wjKhEU2H7Xy8YUu9iasHDN+fEytpHtT5b4uVByhEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771427694; c=relaxed/simple;
	bh=fetQaXLm/sBTVBPqvWvAceujkrslA1zJHTeEJI2XJKE=;
	h=To:Subject:From:Message-Id:Date; b=cWSUW4JKpT/tPY0tcmewdzLph51QVtL989DlqNob8LsEBWjJBh/gNE1mkDBLRaMuP0T7qYrGxbaytUZTVN6XkU+T5Bs68aXkVsun4UIgB3cQdwu0VCo+JH+vS0XZBQkDpuXLMwjfm41ZyJdCLXSterQYI5ZZ96JVDpg76Xy/lSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3Ub0L/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3Ub0L/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC29C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771427693;
	bh=fetQaXLm/sBTVBPqvWvAceujkrslA1zJHTeEJI2XJKE=;
	h=To:Subject:From:Date:From;
	b=I3Ub0L/UwWF36+vHXRSUuATeNrpJi7b81yqJLDj9pYJA64QpEzGG2WDbUh/Xa8/B+
	 OWyfTp2eNYr9tjK4P1dNQSvT/GZzA3xtjTAlLVc8/PieIUtEQ1C6NOfeV3RalF2ZEy
	 wXUmYMdNFNggVzB9UcBHT2XpTPX5jXh0z/+2fLKq1aoxZ9CxReWUa26muI8y9yqV9j
	 Nzb71rXrst3VVJhqcLihtrR5FgvbzhaRikudjxZJjAfWrsyiYrmnOnC5Z/iiyRlGTt
	 X+bpmjyPFfzxKQwoiNARw8zmE2OK9Q71tHLEoRiX3eDTFtLrLliKwpPMYW8uT8FK27
	 hg7H2Ay5Hx72Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DFAE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142769360.5153.9205761492505810527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3c7097eb0607ee7fabb927746c9932bda41a2814e1af7962bbf9414139c855
Date: Wed, 18 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771427693
