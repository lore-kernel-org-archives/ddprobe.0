Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56ECC2745E
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746241794; cv=none; b=SfhjkRaJFgl093MALX8Xm72YV5BLBykNpi1CHqbLeYKQR1HpIUK0h0GjJNCjiJqGqd+c/xR29QVCaUin+xW2i4drWrJJcm0qRR9NwJFsdgLQbQWYC3JhkuOMGN33k6rHwqPsLvGMfIqkGQZHtz+s8tW+aZAlTEIeusSK+15gglQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746241794; c=relaxed/simple;
	bh=3TOLcgkt4W5gYMlw/xjOZauJPlt31bGbkF4rc/3TP1I=;
	h=To:Subject:From:Message-Id:Date; b=IRHmBCIo+rdsRcGJ1mQ7qguj7F7R1Cr9l4hQa/5cKnfaJF8S1nRhjYJXQ++vtIIjt9P0eZUhVd+5qWml0fw79iJiAY/DI8tIvC5tmn2ct5MwqqFWqFcnp8H9U4YXYb2Aw8q7LawNvVmTtwqo96PYMeNtc7IVEXFQUn2Qg7wyJGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIHd9oEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIHd9oEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5694C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746241793;
	bh=3TOLcgkt4W5gYMlw/xjOZauJPlt31bGbkF4rc/3TP1I=;
	h=To:Subject:From:Date:From;
	b=KIHd9oEaO5YgtlGg1ZuRWVFje+6XQ+JqCBHzGCOSf0XYZzkvEuynGIudL0OpMIzbb
	 n1LqQZq8IgVuzWe8Kfsd3pIa/y10HU/cyk4wWJa6qcV0SHkuJ1u8DKDqREjOGxoPEW
	 28J0ctXEPkJu4Udl8/UAaYGz1N7DwlSaYp5fmXo7IYVq0xs2Y4SCDalLajoRyeUJ+U
	 RFTNEtdWcxFhwGNK6Y923NbzaSzuJ1+HYAh0mks+g2TMUhrF5G+cJB73+2LlS9jqgz
	 u+axa/VajyPSU+E61Dh4jYYJsEoD11WIzVNtss3XDtJ5sgecvs605/LwLmgMOI71jp
	 RfnOV7sBj9NKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F6C3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624179357.1173.666790873472291140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb052e21e51f125ab1b54f03f42287244956bb0086f64050cb4f6830252fcb9
Date: Sat, 03 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746241793
