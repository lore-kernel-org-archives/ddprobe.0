Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B9A19F12D
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760794794; cv=none; b=I8GRDYHXud6sxYvbXksPJd6/rL6w13AmgoIv0+GRwNSxmwsnFS+s2/TNLwFR4wkryQqU8gewWb+++wOzS5PVguNwy3ohBvq4xkVzHvAgD1yONu1X2FrM1KP+z4HuXtuBa0KrbJTRIoU1WO8uqC3RDzTWHdY62TXlB8E1lN8SD2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760794794; c=relaxed/simple;
	bh=Awzq83F1KP/HQ+8FCDTxQK4pnChbfuP/O3RFZKYZiHA=;
	h=To:Subject:From:Message-Id:Date; b=N0JRRA/rf2nJXAlo1RVp78dMH6gndiH9yL41B3miJ1AVsvWrx1KG+VZW6Ba4H2ddDLRGGnwiBPUdfc/WziOyOfxrUCaC6yamRsM31yCi9wJ/F+2OsUycIIK2rijFm1bQvRNtqxR09mrExRTp0XNrrpWQOesgD6AIadrsrz5qiFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9eG2APV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9eG2APV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE1C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760794793;
	bh=Awzq83F1KP/HQ+8FCDTxQK4pnChbfuP/O3RFZKYZiHA=;
	h=To:Subject:From:Date:From;
	b=T9eG2APVwVtyjlFKVGGwPTxwGqyphXzLCyF9I60rMf+dpmQYpS3thxSkd1jFCp0xv
	 QiJoBYhR0ZlsW2p9Ut9cl/oi1CX9YbvV7lYZvmN8YNKNV/UDKRCKTe8KTOy7Az+sdr
	 hacPhWij4Unz9joljLIuWd9WKFOCMtmoOn86tZDQQhaR/zjwLU/BofzxtmGaY2nOyb
	 UECb7spx9IY8AHPxQIxcQQzn5FpESbR4nsY9niWm171qiS25tEBe0VXQJWPfI0YlI1
	 fbIZEO92ltQJeQ6byP/ZE2nh/xHifC1RIvx4eW96mORgKajFqm+8UV1TmkJSXL9YXM
	 /OHDcqmeCgrQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF34CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079479358.20804.14192061984751663540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4326c396fc2d71cd6d286e2211629942474f6e288d8c145b2d186bf647d461be
Date: Sat, 18 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760794793
