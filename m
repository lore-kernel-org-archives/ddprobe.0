Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45751347C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775942854; cv=none; b=gvVy0mjcbey5ED4XpvEWlAkDqmKJSn6jI9EZfHMNK1eaUoQThePMyelkOAfAABxaq9rXav1084nSUDFZ4DnVSUXNWJBMOXtO93eLjxFhshSiOQPmxbiYtAnt+mgmvuhPQwjZw0JYPQPhiYTjIfaxwsERylxL8g/rWj0/0fxTkQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775942854; c=relaxed/simple;
	bh=GbiR9/LpRMHhfMVfTIYyKJMp6Yj5k8vq9RTxdqj1Kio=;
	h=To:Subject:From:Message-Id:Date; b=Su0ISrW5okcKtPWjAWgW4kZ7l0icJiCeiSqEAZ+6phgkdGwloPyha6f6ZxovEatiOx0pl9F9yhAnl+kvUkAm6gSVVbgn6Mjf11St5t7Xo1+wi24BG0P3Zv1YowOGfYDWJO1BeTpxBYo4sD/P/zTBbXN4Naf1wx7fWsjy76EiDxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vffo5Qed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vffo5Qed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C036BC116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775942853;
	bh=GbiR9/LpRMHhfMVfTIYyKJMp6Yj5k8vq9RTxdqj1Kio=;
	h=To:Subject:From:Date:From;
	b=Vffo5Qed73MRejEFMwLKiqTmM91rnfV4vJ0fovN6Q5wVPMVRMjIDb93I4Dkw13f8V
	 J3XcTDj5ZEOUM1Be/YzxtamENPYwthXbH3LVZeQTMV/ouU/4QsU3oZAlUcRqsUVm9E
	 Ezze8hMtEgT6JUUsKyPOJI+TX7q5WbL6faeGrnnBLvWvl60nvBKQ6GtPzgWMdU4Ecu
	 w2rN4z/X9rmnzcTF1h0Q1+q8ancE41JZpzoYa4ahj2CAGsY9rAuP/Ox3uVijN1FHzO
	 irp0RqKtAXhGx8O1NVcfZ+RGufuIkwZPNGGESG48DNgfOcc7Kdlyza4+a1+QvuTWRq
	 rXQkTOtfInjmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC03EF3ED55
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594285368.12032.9685538854022062286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80552487921aafd4e1ad5571719772f4878a63f0561d346d94f0e359a8ddc9d9
Date: Sat, 11 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775942853
