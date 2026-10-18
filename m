Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887EF397688
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792341634; cv=none; b=d+1DSJ9rI9SftuSu3fbctqwell4hkT/fN5QucdEnmQpoZO3mtk/MoZs1II1rRId3ppv89d3hZ4Y11hgNKkw9tHzprfBElCgyBrA4hGaofkWNPGmmdV9+RxH87gTvPr2Xq1VT8ZASdmv2kj0bYdlcvyPZRJSc50ql/YKDFGtfJao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792341634; c=relaxed/simple;
	bh=Oi+hC/dYqYuHx1pP0devIudYXsnP81UpD/Yp3GOUz2k=;
	h=To:Subject:From:Message-Id:Date; b=BUfbMUUEoSh8CWTuGPqiuH08+dg7k/fBnMvHJKuLxp0IQh5HfAXw6Dpx0oHHz8GCSsI68yqCviaKE2GCcl8m88bvvcVtJIOFlWsyh4ISXDKANxJ4ZmMUTGHxKFpi1k2mUlUkxikenN81/vklKl0sncQvc/D0CR3FAQT7gymGvA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPmsFMgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPmsFMgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAECC2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792341633;
	bh=Oi+hC/dYqYuHx1pP0devIudYXsnP81UpD/Yp3GOUz2k=;
	h=To:Subject:From:Date:From;
	b=IPmsFMgHKV0BmpVqJAlVzDlG4aCqVYiCs4w0+8JS5dNoODoLfKRSQ0KAOgKiXG3Ms
	 liPkcY9zEgBnpfLFOnft9abSB50w98uyas5vwJuLDR8I4c0YoF796jjQ9vQdR0Yosj
	 FTh0iJvXwWK+vPXqGq51367bcwigAk7JLNschWXPgfq3Uj/4x3oRmUZoq0RgG+WfP1
	 rSEb3GlAt8pfpZgSID62jWD7JH0HzS0W/3xY6kTI3fP6/8Y73F/JFmaEWlO1BrrxXi
	 4ysfT3oPfq+R9DNcHjLHl7/8YWVdvOxPh9FpwvLyMw9JqnjC3llDE+i7tTm0+fiB8B
	 hkZxDjOdWPI/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CA8CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234163373.13143.9422404492668716808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8c9656c494a34d315dd1abd56aabca6139bd678759679f9b6383ce788611f4
Date: Sun, 18 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792341633
