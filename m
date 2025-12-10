Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DED1684A4
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765341774; cv=none; b=Rb8KZz3xy7NjPfocyro09lEhOWsyOcjykrTF9qgTXrgX8lPyrkzlsz+FpCaxck319dfJ3QKNXVAOc9z/gSzskG9naNsW+bFirvy53vwPIJjlLFvGdayzx+Rnht0s1qUpZ6H6c+MGjDoCQVMEnmFf8D+k0xGBQEvPYHtXN7QSjtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765341774; c=relaxed/simple;
	bh=fd+dZDawoxnAdC2okAd4CjK+GEZMHn4G7O+0/MA+ozE=;
	h=To:Subject:From:Message-Id:Date; b=aHQdV11t28L/gTO+BJ+P6EOQme8cBKG/2V4QSQ6zE73R5ZlI2429XxrANLu3WmLuPEgB7x83XgVS3xkV9VzWtVIU8ZlxG8LUDXt1PGrQ1+J/zmJTZWZEheCf1bXeSKG8b7sJsTOEv8KM6sCbzQPjbTbdMfFfblJ8pW4wb9k/JEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNzlgJ5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNzlgJ5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765341773;
	bh=fd+dZDawoxnAdC2okAd4CjK+GEZMHn4G7O+0/MA+ozE=;
	h=To:Subject:From:Date:From;
	b=bNzlgJ5xvcAECjUPXGHP4yscklJef/v7qStXfewSMAfMK6TR1r1RVRTwA6EUQjeXR
	 w/anty21LQ7hRJOuvIuoJO1Rs7s23xFKo3rkXqpUV+aj5YJPMwKeb5q9tIBAyirE1u
	 /xjY7LKzdEu+ZsTc8RWj7RO6aWV1cMkJi00jr8wfpZNHRXNzFPIrcgeDNtDS4Nssfr
	 XYEuse2QezsI4tjFWPCAjIaaMzDXWrglXB4VFYzs8Ilwu3wUmGU+89CimaS7Q53Kus
	 x+tJyuUS348AN+YAhzwTNQIrT0wQi5q+NlpZ/Od4Mh5mm4DF3KEVODgkVhBjnPNY/3
	 YFFbKf0MmR35g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96398D3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534177358.13306.12194291848818759014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b73de4798867915bac67017b87434fe1289b19c6863946fb5357d91904da743
Date: Wed, 10 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765341773
