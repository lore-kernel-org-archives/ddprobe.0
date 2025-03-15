Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D09B7485
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742051394; cv=none; b=XClwVD5rYLOMo5C9jpXEL8FkV/9eWdorae82dpEDGokP939YqAGIP2efiLtbZl9Gztpl2F+5qtyX9O6rgAFOHi8CxSmGX+T2F7CrKq1tpr2EfLRueHf6G1fOCHqqaYu+3tsomVSvp64/tTxfr4lA44VRBsZ0CaZ19MG0pLN0GYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742051394; c=relaxed/simple;
	bh=Dy9WqKc8tKB1Yavxy6AuhLxrehyKIiI1q5MiFNsuM9U=;
	h=To:Subject:From:Message-Id:Date; b=k6gZGM+TfmfA2dX19Pa//fQRJ72mWDxTSe+zhKGT0i0eA1Xm108uroBhAC79hJVi3VzhGefOI/QQXoGJCQIMykqTsyNwKB3T5G6mSEePTpsjLJI4qXnEYb2RdXRzMRh3fW13Kall3ha3Z0hpeuHzgVFq4/gzVP2jVM+VWBmtTzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/qCN4+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/qCN4+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9B1C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742051393;
	bh=Dy9WqKc8tKB1Yavxy6AuhLxrehyKIiI1q5MiFNsuM9U=;
	h=To:Subject:From:Date:From;
	b=A/qCN4+gxA0EIa70w19jT8pimfdxV8q/jsItmlrhJCN+fwwSuvEJWLSajYUqUF+iV
	 Drv0WMEfUqyRyo/00QaV8kCTT4oGHZpnGcImGxOy49oogIiC33uYeACM8ofPxv/cPv
	 UHULLPfNg55kyIRAg3VLzOrrFTt25Vl63c/cG45nqMlFEjreIADQnchaP7jCnk1Pkr
	 Ua4Av7Isqi/dbnZ6YXcjiitwrVXYhcr4Mw9Ua65dAi0r9GU+UKR05u8r0+UKojV2yp
	 pY9v0Qx80GmWS8WSPo1Pb8gGLsFS7Gy0cU30suYWHFonLsuuVOIsp8gQh/8ugJJZSP
	 HaMTiAnUfbyug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97213C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174205139359.28615.10514413115297972702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7610a56362e5dd296f7caf99a5c31c5ab74a1d4519d1330fd167e15471f20e
Date: Sat, 15 Mar 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742051393
