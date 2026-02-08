Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B2D1EEE6
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770555834; cv=none; b=OZ0iYSUsK2p+RGsUD4jQculRMn3daxrUTvmd9sOfYR/MbRwnN+H1/hIYqUtWCmpwlmyjoQrELWcKPdeO046TB2stKph8spKyZEnXNSRWQsqfjziyT1RmuFE6LXY9Mm8mIx7CpZqLCEzUMQw+Lf6itEUuDzc++LKzP4PYbefP+Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770555834; c=relaxed/simple;
	bh=WvHOaPJm+N7dEYgcMNFdriBXS3Gmh3wAa8Pd0Mnqej0=;
	h=To:Subject:From:Message-Id:Date; b=PJI2WY2kPFDtzudnq7kJB2MxPq24NnlMIt6j8afGPbovtxdvFCfK9dBa0wwBsg4dw2JBkUqEPZE8FlAH5EvhUE89AKQ2/7k6Hdb6fvaZnorWuF2lU72uuGK4pZPv92nAwmFmhPR+Q9mxtrt+5V5jzD9Kt/PdjcTb0Kxyu/bMCKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZCTN1HK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZCTN1HK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F26C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770555833;
	bh=WvHOaPJm+N7dEYgcMNFdriBXS3Gmh3wAa8Pd0Mnqej0=;
	h=To:Subject:From:Date:From;
	b=EZCTN1HK4mP3frHWUdG6fpx3sTGoRFzOxUfbGdDDMednAElWGzAp79VijGaSfvpIa
	 Ypb5FR7vA18E2NqLCh7Q5tdnOW1g6FIrNwe99/XgzapkrDpkK15zgO07Rj+BG03lUA
	 07HPWFzNbzD6iC86E1DpiqkYfdih8+lTBm/VnG3N/9HL2lFabaxTrPRRKBSckFffpG
	 dRgvK4WWE8r0sZF41WqnRp2KSVBRImhF80uaSd5l1wLSlqnmbgQXD7FBdiA/ccOOuc
	 YiszFq1BUm3eg83iXZShVHQNh0Qon4Nq869S/MyRJXzrR707cVHzATcPp3a3xdxuU+
	 VOFjYZnvRg8tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4EAEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055583359.10579.1585716563057795709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f6604acf23718fba7d81864c077575577cc855c3c3bff468186066fc091d83
Date: Sun, 08 Feb 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770555833
