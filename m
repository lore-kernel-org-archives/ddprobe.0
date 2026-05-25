Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467A033F8BE
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779696154; cv=none; b=EeawfbehoJot5i3X+9VmEXIfkqB/6vvXDB9pMNG34t61UqlLi0JlyL0I0DPMGB1vT/5vJANzyNfLMXwAj4lPUS+rfzEFFtwpK07yZrUriNU3ruuRMr6g5GlaCY5eUkboAeCGvQmJ0OuQTZgmZrNhxJUgdscO+VNBIPWTP4wIWbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779696154; c=relaxed/simple;
	bh=qQ4Wg3v3PwHI/d8XYXd9fCtEWH8odOHHTna7PYl1UEo=;
	h=To:Subject:From:Message-Id:Date; b=hSNQTx6ts5jPGjSnO5l1/SABiglCFQWPxHJAFjKMg3K6KkI0vF9kCbY4de8mAd9qNub0IHFjGeRpY+xVcTHhZNsP7XXoe9Gu54NF9PIYuRsmpxYL2uyB1ALQFWXHvbVeoXR7fQMaghTDGLbf1q4eQy1hWk5C1pF37rGSceYhZc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQdxDWTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQdxDWTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DFBC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779696153;
	bh=qQ4Wg3v3PwHI/d8XYXd9fCtEWH8odOHHTna7PYl1UEo=;
	h=To:Subject:From:Date:From;
	b=PQdxDWTHvjYJPU26G7Qvt11UqKzSXgOJE4IDRgooaiC93KKMr46S2izGBtNhYNcgx
	 QM0nTa6xz9Cv/P7oS1v0NN44bj2zNdxftvAw8FBlILfV/lqDQiSryG4+LQuXGNofnu
	 FhF8pWWJ6DWO7ofbPyveF+JJ0JL+M8/uwaqDSSb1E5PwN+UpWWKBxHhVefPasdf0zu
	 ICo0zp/w26fvysaar6ki5fML0EngzZ2OPYfp83NapohGIoT0iwaooFioxRW54QzAUt
	 zty2NiVU5IrsZ7kR3Vi+7sDqgg2t/oSsj8ieqaz1NEgdsHBT+mY+SY+2ZaX1HdQwJq
	 Yd2MHfh6/UElw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA262CD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969615368.25149.10704668721084441370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc5895b97a027f01104c9222e373b190a3e1430f7419bf4249f0cbf17271107
Date: Mon, 25 May 2026 08:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779696153
