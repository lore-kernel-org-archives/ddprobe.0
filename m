Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A441EEE0
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745901594; cv=none; b=b024WVCEjA8Lcdb/Opl7Wd+6nR1+W2MZIFg7W05zeo1zWgQmVKmffO0nUZpm9rKjbaD5ece7j+HwN+4ucRim3efs7eEgSQGm0ovMV77hBZOGQnicvbIQAv1iDPEN+wnPtCN5LZvAy3oT5lSjZheu1/PU104/e8cn4kcpBN7OxOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745901594; c=relaxed/simple;
	bh=IFtFI67YELG91TxED7+Am3J5OkVLF++6pd9Oi/wHrOI=;
	h=To:Subject:From:Message-Id:Date; b=MaQsPxQljApX+7s+p3hB1DJ2nK0uTom5QTBIcDk98HMgvEHmJTqIqEl+DCmgSkGBnTJTsXwsfDtv+PcDnP5QHtdl9wsAgtW6YbdDPwF58oJq6nHV8cenGUOwoX3rgyD323sXx/FT3s809hwrV/zl/z5s8x2K8opv8+vLWBmnY84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWmkT67J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWmkT67J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A13C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745901593;
	bh=IFtFI67YELG91TxED7+Am3J5OkVLF++6pd9Oi/wHrOI=;
	h=To:Subject:From:Date:From;
	b=fWmkT67JbZb1cdtvEJqoV2v8fxbEwcZhDcmNrE2xm6G7A11VvTQ/oZrIxYg8IA01a
	 KuWvKXRSznT3XGXRnIxtVU3urs2Vq9T+IYT9ZIKdVDxgjy/wPxTTawPXBxMdWbjqVK
	 njXFcxAHT9LxEzR/AcHolbNChgAD+xfmNTS/yQDGcWYJvKfpxwnzx//uaxSBD6L8W1
	 oWtH5GN6PCo9gdE892MbKUPpkwNCIxHuim6/LNMXV04kUej9mmJyt7sAmrVHoyCTMH
	 9EsXdv5zqq/RC3t3URASvVqs2RfonYHVEXRjsdP78nKTwNxxhFjjWG1b+SpU95/deW
	 PXU7EG0n/CYTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94148C369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590159357.9226.8669975599586687782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b087f5f36f0861f05f59e7a7913ecb45785d46ac89ea5c4c75a67198a861f7a2
Date: Tue, 29 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745901593
