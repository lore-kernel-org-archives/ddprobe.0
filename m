Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D22620FAAB
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773646494; cv=none; b=WCf5BiK/6IDTBE4wJBth357SqMj11o0xI9tXv8hFy9HYYAsFjs5kIsHvnDCYZJQxkZQuMlS8J2NGARHhdgfrBuwzHMOWYZQiWj33bSnTUknUUsZA+2Vu/MeoQUzOudMhBzq9lkFoDzUBYwkOE8hgG38EsBBEgfhrPFg65zGiPu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773646494; c=relaxed/simple;
	bh=29jFfM/Od+m1DSUJnY3FQPaCUpCd6h4vrr16x4KwKlE=;
	h=To:Subject:From:Message-Id:Date; b=hEs67Ddsix5aFl6him/5pTN/v3oX9v+iEqLe+oepoDZZ+xmXpuVpNL3/prZgHjN4uda4xUpXRPtpNlj/ol2o+YoHkEGNaAZ6QlprPhOCVe3cS6XwMVCnv8Siu/GwsFRB1w0B6K9Rfcr7W2v9/mChYcLhxZUa2Z4k8336vc/ptuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrHbHZKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrHbHZKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEECC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773646493;
	bh=29jFfM/Od+m1DSUJnY3FQPaCUpCd6h4vrr16x4KwKlE=;
	h=To:Subject:From:Date:From;
	b=KrHbHZKlQFY90OAbCMWIkn98AP7IzobyR5wZJgBaB/pNpebGm6jD/c1exru9cUo5q
	 al91TiOoJuQGIBhyR3uF0gYE+BHVdLH5EFM4b4MKXyWnab7EBxwwR5zlsSJW8JfLjM
	 s/Gh9LCLTAWyegUX/j42XM7WtB13hjupsmJrr7+YNfufEslWnvrNHc4PvkNPsAR27W
	 bGnGOjhR5Wda4uB9I4JL8amPR3gLEsRqraDVHOCHQi1fBgPn8KyN2PlAXcb5w4UF+6
	 ynoJ20NmpKhrpqJAajUAnwsR0Zs+ayOEYBrpga1HNbsU3a2jev9N2HTH6Op6X8JsRE
	 Y/ag++mqJoLOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9057AEFCBBB
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364649358.15818.16316450045821983018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b961ceafadf424b8996928513441395ea9048a07da23f855f3c7ad41bba4e11f
Date: Mon, 16 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773646493
