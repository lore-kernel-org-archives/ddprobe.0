Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CD58C1F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713413363; cv=none; b=X6M7c6JtgXLeoNcni9JbaJPjW0plwRi5T7xOtay/LAgIW8dmNf2xInfwJSDW+/qci8/oUMqcNO0EDN59UliLg7RaFV689yX03xNBH2FfRxt7yd9y0gI7um941o7CgNWoEgX9CYLs/9Hb2N8oQDyvZI7ZSYQZXCu+xRIHJcdAkL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713413363; c=relaxed/simple;
	bh=dcRXPIxUUvl+BheTcRrCVnZnJ1OywVrhTqm6sh052K4=;
	h=To:Subject:From:Message-Id:Date; b=Sb/g//fZ69Zt5+7CWJMNjAT+h0Ph+2iPZ1CcuQUGRBLqpck7HX2qZnx3BB9GWvELg2huYZoSY46UCU2aFm9DcPyajI0E3z532rGL7LcCkSO9I3x6g1YQ5c3F+Rv6Saut6b+04+Tl8KZlK4OrcR+vxFhJEnxSaPc5zMNGYLQuEsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZgWySIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZgWySIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3979C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713413362;
	bh=dcRXPIxUUvl+BheTcRrCVnZnJ1OywVrhTqm6sh052K4=;
	h=To:Subject:From:Date:From;
	b=JZgWySILT+1NaibR53OwG0f3TO7lH12MNIO9Xz4FiXAf8zQ5GR8cMvbz5Hxsut+eF
	 7TEGdWmy3aqtMR6IQKMnFCP1VsnYOrkdxV7W8s+Vys1kWhHMQHowpW8m+W9r4MaS1j
	 p6C+Qs9jjqRWty5UhioAPRHgzxqx1R846P2yJPwLKOyDJEJORPfc0CjNRxJ6jGxoCx
	 oo5+J6iB+xBcZa7GX0XwFTUTzEDFNHplqXeZeoPcG5UUQIWOflqaenaKMGpuKHr6sK
	 McdLm/FEuooZjS5Yc8ZReAcFeHQ0LYmYdksL6iVkWeGMlyWwdDOHIiElrYK/SGgWMw
	 OFCNzf99oOExQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCDD8C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171341336280.10593.12025050935832903750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626a445e255aaecc999e5dba90bbf2ad5ded6f7ba7a2388789b5736d7334bb2b
Date: Thu, 18 Apr 2024 04:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713413362
