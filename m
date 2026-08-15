Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558CC17B50A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786792234; cv=none; b=Hd9PoMtpBi6Dbe3fJAkUT0sjoq1KRn7z8mUnyPMy1TCVABlXM6sDvq3RQVJoIQBtGggJGJL37x81ALc+CZVMXFCsZMq4mSktj5Ccec1mr1IV8lWPJ37GMdK4DPCEQQW+kOLUrZGiLBXu0ZEuo8iyxviRbp4ZDY5vwB2QOgYu4Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786792234; c=relaxed/simple;
	bh=XGQ7vvSrbv2ooPzzhOgiDMTNl67K+mOO2XWZ7Bp+ylU=;
	h=To:Subject:From:Message-Id:Date; b=oZoucdjbADhd6JywMKCsYZ2XTfgymIEMOU/ny9PMxs9fttFmoHgoxhisvnTc7WrpPwRMLok3yMrTsPCDFYpyULpJq1TGwwH2kX37cJqbKVHjYU+byrELOmazj+ZzYaQzxv+gbx5qmSZUd6HpCTQ1+4fNTGB2lLdLnaPvDgtDUlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSiSpPYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSiSpPYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8106C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786792233;
	bh=XGQ7vvSrbv2ooPzzhOgiDMTNl67K+mOO2XWZ7Bp+ylU=;
	h=To:Subject:From:Date:From;
	b=FSiSpPYH19OAHYBWz4OLj+Cr+ZPYSH1MiKu5ZJ4dXlCp7dkg9CW1UPn7ORMWbRvSA
	 vogBghzZwzNh7RFmITGbBlX+v1MVdQL/WMpNSGfKl++RnEs7HQkaPWIBKRFgpLILJa
	 e5AY9EyZWTiytmZT9ua9J01JAj2cmge5YwocV3+sGjS7iln+si/7pv1cL9/uM29B4P
	 6P47TDgZX/OoEytNqpAO17E3GbSBkawnICkc80qE/OPofP7ZAWTCCYVOl5xMBlXN80
	 ZeUHNTz5nDg5GxC+AOvq9GzrWhBcVhi6gKhpS/dVLRIjIXdzVFfYwUHHpdemp3xfsb
	 xi2UcRXarkBZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC6BC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679223368.30286.16134770053642054370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 505fc5c41c6bc912a0306b25987127b0697bb9e463fed9c00fa9c21ae3639132
Date: Sat, 15 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786792233
