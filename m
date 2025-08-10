Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2050B1C3C08
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754819994; cv=none; b=XNSegs+g7L4Rl7fI+ajpoFXzw/aFkHIfg1SWsHZJ2abASKmfn3UwmcDLzGRFl7pqIbjTH/6TRbQhAX7tHV+G7/uLH3VeL3QXrBlfYztm47Twd0E9VCo1ardgo3l2S/9dlYQaKl5HTvO7W8EiLtpu4hbXdOLumZOEhptuFcJ/ypg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754819994; c=relaxed/simple;
	bh=zQSX19jfeyikBmbNO7fxYAelEGdnhh8vI0+yHL4hTAA=;
	h=To:Subject:From:Message-Id:Date; b=TXxbr3IOpLacbX8A/sR6PCyVjoqGMPD2IBTr+M2LUvL647pxw3MA9Gl6ohoJOJvMV6PxSguGFj4GExifCK2c1MZlZQo18r4M2XaK+riPRisFlbygX91mHq6Vc2rIUBZpeTSEwr0GwXzoWudI3tKJkyUkW8SRqBOfzykeqSoJkHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2bwSyxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2bwSyxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A502AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754819993;
	bh=zQSX19jfeyikBmbNO7fxYAelEGdnhh8vI0+yHL4hTAA=;
	h=To:Subject:From:Date:From;
	b=J2bwSyxudbVwL9GJg0BcFJr8elqz4G44/iBZ6Tuj0ebI/+36Q4VjHI9wQKVfx5Qrj
	 qHyODU50q+TJ7xVZK8R6t9JCVFni9n1Hh/GtlxB5/xqkuiGnpCtnyTEBjTzkC1tWTg
	 ogLux0urosh+UgjKF1kkN7rVmqWOzYxdfn+FqUpAX4yHC6lm6ST/744XeptYw+vim9
	 BCb6Pd0+3DTSRwGarfZ6UsIJ2IJ+ICCt3VKrgXoULl4KyPrz/ORoSdGpsSNUgCFLF+
	 sb+dvEbLzeBjrtRLpiJp7Jsjvf1UMNB0/JtBZL5KOLkN6x9j7lJ0IdFEB77iinpEWU
	 FW03Mb6bxo2ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D8C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481999359.13478.7987217517686038246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3b0b56a58ca9ddcb14eb46f8d3f26bd1c18c0d247842cc2dacb7c59d68aac6
Date: Sun, 10 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754819993
