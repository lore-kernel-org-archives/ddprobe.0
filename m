Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D686C144D3D
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712828296; cv=none; b=BBUlUiSlR0sdOMvsiFgTDjveL8oclw+TmYdB/9B5N7lUiOrWZHiLmye40A3i1QiMNJ255BNY/oiXfigWK6JEKj1kERzWll/mJx8LafFzkFqFFDFy4ximWrnfjlady9UmsIYcx3OjqkRzw5T7L2lHHf/yzij8SCmFW9aPk9VPZL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712828296; c=relaxed/simple;
	bh=cJ9OzNmU+GpCm7vkR5Z2afiRok3v4l+WGZGruggDj30=;
	h=To:Subject:From:Message-Id:Date; b=vCnuZL3zWX2xi5kFcF7xWmGmEqzxjaEy68xvI7AAwukPTZY5infAcGSD5ZpGdGZIypTa4hYV9DduXaxZkKRl5w22uF/kGTyQbMfZ8fNIdRNd7Jvzz+oacZcOP+oRkEp4ENy7i/6EDyJJxHxKTH2he8U4tX4pQDKmpJLf8raiaNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6a0cJ2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6a0cJ2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774A1C43394
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712828296;
	bh=cJ9OzNmU+GpCm7vkR5Z2afiRok3v4l+WGZGruggDj30=;
	h=To:Subject:From:Date:From;
	b=Q6a0cJ2jvSChPfE0HaX/pcKF1I8xXqoRcs13LEFr0xNh6xO8jLIBGuka58EKWEebQ
	 L45ZyvUVKX4YDiZhahlUc000alT5aMRVcYTzNEQDhEq7jwURoBySiDedIUTxn6NiK9
	 3X/dVMUlJ/eMZJUOR4S3lSxtniepaHd77SNsLAq2nhm4IQK4RQSO6y/4KhZvfntfN0
	 jglwdE3VKynMRjpnI8/P068gRDQbbDIfx/BRC9RnHDHkIgRkWX6/3DMtUsXA/eeGU9
	 iJ1Jc6VUe7H7psgxgYEDK+3j0J+a0WctZtvuTNbsgYtpxFm28O8FH8qjM4xYY01eM9
	 gyfvwXDzFOJOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672EDCD1284
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171282829641.29226.6706383803854925229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041a177562edbe1f8d3f37ea571a7c06bce08853741b1f20a7c7c1922b69632c
Date: Thu, 11 Apr 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712828296
