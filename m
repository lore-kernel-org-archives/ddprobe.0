Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227CA1A9F85
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760550594; cv=none; b=tWRyGDXuZ50BwUSxp/c+eBHlMhd0ZJ397acxg9j0d13lV0k6BITMlVAF/0r49HwGEO2VBHWczk3Dou3xKYYyXh3EZ7hckxrldIPzGEMJ0lCF6nHvgzYXih25m1KJqvoQH0KDlGWvh0cG6cuVMrLUjswVfDHgphtlHsicfyJTXyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760550594; c=relaxed/simple;
	bh=c2hpZosruCMnBmWZLWCR1l0+AsLLgw+J4vWH+WPaK0U=;
	h=To:Subject:From:Message-Id:Date; b=erFGcDyu/ZtjCmfRHxJWSmZ0+t6CR68EaF/q5ikdrTmLRvNpeOi9aVzwPlSQMGyp7k/VqUmz9UAyHT6qtNkGobmVzSnaKAdI8UwkFJXIqN+aXxPi/yJQUEw706uqatNVBCcPsBJvbK0mH/p0RRug1kRk99rRTgtu2LNFj1AKddM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLkzLRHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLkzLRHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAA0C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760550593;
	bh=c2hpZosruCMnBmWZLWCR1l0+AsLLgw+J4vWH+WPaK0U=;
	h=To:Subject:From:Date:From;
	b=TLkzLRHhW/QGTxMWyTVLp3sbf8YgVDTeER0QoVZhf7mxnh4sw39TNXOyRPmdL/7Ib
	 WxGFEbOhY+6FhAl/35FuIBxK0nYnKzcKe5BudOLSNoyBYZMpP3JuDL5X2B0+kF7v6S
	 DCosp3IbmdoTsiaXJSJkreR6aEwN49+7PpbsDyMU2m7I45cZSb3smORy3qUIeCfQJk
	 +OX24PemCaMeEEYzky8KDZth7flo0KaWfjAarYl17T/4z5g2huhjElXYLIJuV+fjBE
	 DvHAc3NwqWmzJNiuJdSI2dnPJnE8SJxONr/1+w0DS9o0XKTZ2Dl7uDGAXh4XkBpwIm
	 ZHIj64p5+4HKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F412CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055059357.19840.8756613241473327600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 925309e062ec05777e86544ffcb4431bd5a203eb48545564d1aec69d57c82caa
Date: Wed, 15 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760550593
