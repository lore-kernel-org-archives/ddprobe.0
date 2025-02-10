Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95DA01C5D7A
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 10:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739183754; cv=none; b=ZwRN740LenThQb1PPvWpD3X7Lv8smlluhvn4Pj1XjNaGKtubWu2lmf9lHeUUfLmq1AqNGjmG3v4ukS0DgZl7C1iLwsZeGCCuE3y3xTwMoe1d+6FjOwsC97i+TRhj3DUUhbfGBlTiWJ+LGTcfFCIwe1r1j2UNIlyR2zekOXb9vEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739183754; c=relaxed/simple;
	bh=XyoDH1FGA7D3Wd25iyf+lWysxglhNP5QbZeYrk6XzU4=;
	h=To:Subject:From:Message-Id:Date; b=KQnOgUx7tYSx9DRCyoQ2CwP96yw3s/PeTi9YFcf+EAcQ9+IgblmXeFH7bM2+qYqW+ZC0Y6pv7d2stelPpPAGcgPQfPyr5De+aCgoP2KfH3ZPKwpbDGVBEUXiYOmHxvF1MbWvPhECi2N4m6b4mL3Zf8otseaFOwlerVur0hX0vEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqf58Lx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqf58Lx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CEFDC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 10:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739183754;
	bh=XyoDH1FGA7D3Wd25iyf+lWysxglhNP5QbZeYrk6XzU4=;
	h=To:Subject:From:Date:From;
	b=oqf58Lx21amC7/8rDvxSkBAhSHj+lfaaxHjbns+XnozDvg7u4bTbtLTCh6j8UTUKF
	 WuwMlI1P5i9Pr/XvPAPWblZlEMVI2PNwcop7dK5SkjOnn78DS+5ToGLeckEne/l2Aq
	 Ze64L+ZFQH4YjqkOJbbuX3kyDZeM/i6UkBF4RRYJzQeYHhw2Rh5k6U8rDfyZnPs544
	 sYd2EzKJoVujk472+h5GmmvA4iMkousDgt9xTch6C7UXywff+Nu08aNKeKbCwM+Isw
	 bxTTM9VLDbaswui1YabVeYqcfJye1F11Sak3J3miu0RJenb5nL0eB+z2C/qcRSaw+q
	 Y3DQP84b4sxcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B5EC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173918375377.17287.597036076233253027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 595030726c063135bdf565505f7271410d0c5467f3c6a2c445555e314f3b0973
Date: Mon, 10 Feb 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739183753
