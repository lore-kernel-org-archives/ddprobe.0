Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297402745C
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753606795; cv=none; b=EPSLulodmfNJzeMk5l2Zn2SkedztqtTupBiMQST8krPk+HX/tfp9SbofOVS4UBtcsDyWiS/gJZMJaB+bkjOzTxL3ciMeq9FpUlrrVEHRmh92wyEQ3mqERgGF9YNPDOxlKtP6qpOjdw/FrAayLZpBNxEz2I8oDBHqG5PBs4cCCnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753606795; c=relaxed/simple;
	bh=YFdSP6+l0GqjC7TnzQXUQPZdkCR0L3Fint8glNIAZJE=;
	h=To:Subject:From:Message-Id:Date; b=Rx9f56gHxQevsGEJhYZ7dV+yJYHDdfuql9F3MY4i4SQA0xy/MOeuV6PR+8CgQUETGqBi4H/xM/jwRMj8LX9WDEXysH+yLR66ddGIylkRGzou9JHRwn8I2ZjbUW6pOJGGToZcb+tcWiG2YZqcgA9WmWHdDoMpccdDqeas820U9BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FToi8zVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FToi8zVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8495C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753606793;
	bh=YFdSP6+l0GqjC7TnzQXUQPZdkCR0L3Fint8glNIAZJE=;
	h=To:Subject:From:Date:From;
	b=FToi8zVAGMDiFxFIJ1VWX0QQbEjpADl3xRg3tShq6o5mHdIgid5M7odKLv8H5s7Ib
	 CvT3gUdJswxCh9Nsw0p1grFGILs4/3hf4kOE/q3hdSBpRrWPI/T+11L547WEwmaXI/
	 wSb+FqvVxil0jpWro5QZR1RgEHG3Umen/8BHFpQGygG6EZhp/Od+hlbP+Mexg8HjJW
	 NEhgphvFIJkG8dBcPw6J8vldkgxYCJaBAFHt8btw/wRF6CNN+h9BT6oeWpC0WwSAYP
	 NRgMq/VmLYXn/E4NW4jAJY7eWvM817gVwT02beTRfWO2d/CFh1CkPxkrSF360UHM2w
	 LzFXz6iwQ/Tyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DBC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360679358.25306.2656876998538700261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db27e1631b089b361076bb121e68db69fb63b0cd68f7234a781bb372c3d52ed
Date: Sun, 27 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753606793
