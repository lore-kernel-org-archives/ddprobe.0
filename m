Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E061B7F4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746800395; cv=none; b=hYu8qMGuZMNHvhiJNlyy0dQp+cRjPhondC0AnwuzASIJL29mIuaGABMrp+N2lfbS3imA0eZiXiY6piw0LAnP0XNXkMcFmJVAYzs3gCropATQRr24Ei33CHMrdbGyOK6RNpbtFjWjjWukbGHTclbttn/AKDd9r8fmL2OhQSUJkJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746800395; c=relaxed/simple;
	bh=uRyU2lurwwdVGghiyAeRhx0wCmrSq1BD5Oplq2enZQg=;
	h=To:Subject:From:Message-Id:Date; b=tVLhWmEjRM2DdsNwZhZ+PuyyeRkXf3FOMHH6/3uX7Q3Lu+/KvJUFE8aElfVwq/KHxKC48QbdG3gH0nvwRociLiFbYb3lICLYtrNLJUFwdXyRepcJBXA9bHmjOcIMeOr6CMcIVJRECoGFQG/HnKaxhtFXnk9547bnYT2AwWhc4g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBidpHXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBidpHXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEAFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746800393;
	bh=uRyU2lurwwdVGghiyAeRhx0wCmrSq1BD5Oplq2enZQg=;
	h=To:Subject:From:Date:From;
	b=oBidpHXrZJNCQb1pbHwS9KWsSApg/JhLQXfqFYYMF3JH2tnhPWKtEHetdNIy5TZ9C
	 1nWizkPxs3L5aiHxRjgBQ+jhcbmJXXwPJiiHA9PqZGZQkVlb5hfPFYHtPgZxwzzMWb
	 She3PmT/FlE+ekUqEZ2+I68FcgkJOXrYdy0J38x22i75Ynvc/tqwJXdAfoR2b4VOol
	 cThDT1GbS6mIhm9zcnV+a6Bst8zTEKAhdo0/3cpACkL7aH/Dlu9h62nlrIInmoisRk
	 Oi4Gq6VU33eoJAg24YWeEDM2WTh6gZptMZQjgHAZVkN17X1gVCBpnwVURW4QxALGZJ
	 I1ut3YOQW7gBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10BC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680039357.30333.17008101593635342235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640af4038edc1c1c39ae142392541a9e4f2773758dc085f34c17e71e0e258b82
Date: Fri, 09 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746800393
