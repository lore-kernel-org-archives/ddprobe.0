Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3B51EA7FD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742686794; cv=none; b=ixXr/3qQjpKT+dmsMXdIUHCx5KZQ4y9C++f2fJSg6W/6lTl/U/oQK4nEij3+araTnETUzCUajENCEhlbXvHP/9Tv0jG8Y657qmPZYEBMtkUXfH6PQ6NNoROqrspfoqdt6RxyKxp0X2vtEAvtL/VHv6BWFjXJvYxj2F+RzvpXjDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742686794; c=relaxed/simple;
	bh=fc82sIHTkIqfDUgm8fnx64b3maSZmJ5xhJqRdasm+7k=;
	h=To:Subject:From:Message-Id:Date; b=MgUCiE6k2TROoQK/uiHZSqV6SA+p2is2qJ+kzY7qKNyAEZvgxttyyC/xZQS44B1JuSA+b7fY3b7VBAzc5Q5gTHsscycGSLD1n4LZ9mFMI90jwlp0TYk0P8SBIBAOoe+dI20dNYiPY/5TsH1cnJibNBTajwXsBwSsesnmZvE10As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzQyU7tW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzQyU7tW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B486AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742686793;
	bh=fc82sIHTkIqfDUgm8fnx64b3maSZmJ5xhJqRdasm+7k=;
	h=To:Subject:From:Date:From;
	b=IzQyU7tW7FcSmXVGT+36hoDcXgxPBkh+C80Sr6fE19AAoncQUTGOlqUJWoMcW6nB9
	 XWQvA1tuJD7dnUj7AwnoMh+57CYBeQPIXLAu7BUGLde1cH2OSseF9uaNS3s9cVKo6c
	 DdUfY6TdXPh58MjlJLTZ1dhZHHEsEDD4PBexi+/vCn4XBiG6E59ZHHqBra59idAmlx
	 TCfBd5o1/PoXgqL5Nnc94V6+uWhs/m6rtiff+KHPjebaP3mpZ7oZQTQGtNHIIcTo/z
	 yWE8D9DVs/5f1rFBdVYkuRdkSaUWDoz1GvhIW3tnMpPA3wOi3ofrVkiDQI8gLEE61x
	 O2PsaBP4Rr0Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12A7C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268679362.16441.3628944039522179128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551d21c1264b20f27dfc5535ada4d952f897945da3081d487719ac3ab601a894
Date: Sat, 22 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742686793
