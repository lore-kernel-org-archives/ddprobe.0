Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9A22DCF4B
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760644794; cv=none; b=FJW5WrnO4hb5VParDQMSy2hBFllDcENkXT/W7KPpCOiUzhecAAChp3EakO4pX6MSAkqmy2Lkipgq1ihXlX05Hk45+VX3FDi9/ckC5pGMK5eIS4Vg+/EJHyt2w1F0UjimOw51Jxf5St7hVc/wLSBleCbeMUQQt63+Pbw97VZZ3G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760644794; c=relaxed/simple;
	bh=gDQ3jbIG30v7fS6xrPcxazDoe5aPwC3amTMPeQbBmdY=;
	h=To:Subject:From:Message-Id:Date; b=DwdoFDEPvJoqgYOplRnbftezyvaZHRfRf7vteQLL46N7Qfxf0OOD6EhbEyb0wV7UKjZdbwdtM1aRJpj+Kcaf4jcfHC5JKbRBcHXAK1AStfetF2IJhdu4e43IGcyTP1vniax40+RgbeIUqwwYU/t24IcjmxjrCoJSWBIRtvt0vAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mt4YKhEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mt4YKhEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A090CC4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760644793;
	bh=gDQ3jbIG30v7fS6xrPcxazDoe5aPwC3amTMPeQbBmdY=;
	h=To:Subject:From:Date:From;
	b=Mt4YKhEbRlf7Jo2NUbJzgOui2tGze6LDC6gMxgPpUuHBiqZmAD/vT93QX4rtBMEkb
	 aevTbKWbpZ/f1gC0XQJ1OnV+QTmeEedHECgSWpb7f7+oWO6HEo6Zcq2e0nwD8kCc4r
	 gsbJsPYoCO4qZmDzCHiRbdhz9C6bUWm56sab5LBjKfEK2CpW7mEsY1Cf4ndCf75ilP
	 51unQs7jmhZ4YA2tINuOmVEFqhR2wyI5KzAIqP2eqlYn7nrlsooVhIbXDEvWAidBEN
	 wu1jwBGG0JbDpxKogRHmWQVidVWF20+AbhE4wP+6ZvV4DmWOvd7Q91fMzjBgk+UMiD
	 bs+HcVT9ZABPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D5CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064479358.29580.13253216503165784748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e645f313e9d4bc0d2f006065747ae4b7c385ff00e9d12aa336d8523cd8106c6
Date: Thu, 16 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760644793
