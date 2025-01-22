Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E0128EC
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737531954; cv=none; b=QXxJ4fUcnNIZSSRpTDZKn7F+2TWBmbPqMjvttZ7p3z6Zm0wQ6XHBfKFfiq3D0GxJBOjFizXyNNwF5XXziYd5f5JWfsQDPCYMvevEJ9ksOVrUtq3dhNNmn1YMqmG9WXFzPrMC3jlt5+fPLqXpzsglJExQ1KWezuANsD4ut+1hPz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737531954; c=relaxed/simple;
	bh=QiHqQcPdT3nyDiNKRQSyQ6XeI1MxXoNQFZAUSGxTRz4=;
	h=To:Subject:From:Message-Id:Date; b=oOScFaI4T/gVR416+6krL3Mas1N0N8cutJNzrHbeyV+F8WDwHD24zAThXCkGBfS9MMF80+7kt2ZB3So7ySNd0G3Qik3e858v5nWVx+J7eTV45QQaJ7/I2uj9Jo0E7HfRMUcAGo5Fs5hY18v97fhv3muEtvGP+P7zbXq4kbk09aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTWzhanT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTWzhanT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E91BC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737531953;
	bh=QiHqQcPdT3nyDiNKRQSyQ6XeI1MxXoNQFZAUSGxTRz4=;
	h=To:Subject:From:Date:From;
	b=DTWzhanTa/cn9nEaAdxf+W+TAfpDmyZk6wKN7xyME4hRtzNga4AbLMI1sDZpmXXA6
	 reIQlcfL+F7vhvDNLRn2n0IUF6XdClVksxHy0pLwTReLsDEAq/uGhEQ0D8nuYDdgmz
	 /O2xuzlVuCzqnlHowlabyKb8yzaXNwMqkp+3aSzO9m/o3pn9UDtKKHzgYUgfbnTkWa
	 USlepiZzY/GeruF4WLkbhVLFN9q0fT5ffDsZ2vXRlXUf2TfLzM5qEw2+NhoB5QiSIa
	 iraidRZjqrUPhVN8S0dLmkjWAX+OBISAHFAH0ZpEHXwm2/FUI+Pcmw/mRzJ048E5uT
	 Agw+8Blajf6sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90075C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753195358.24396.6668757618716187244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe75bb9c19e49fe07ac7b17d7344a12b359b816309160e000e16593104cdf443
Date: Wed, 22 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737531953
