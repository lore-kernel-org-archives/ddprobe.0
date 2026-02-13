Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241D6285C98
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771025694; cv=none; b=ijqDDadlCXnRBLlQo9H3gCxcZm0BOdEI/vBJ8rmIAsSEoSVP4pdebgJ4mahU6JNo9yhgiPzIqB4SBgozm3CMORPELav7jkx+SLILw7qRW7HzwEqrqa5UhqyXF3XBVoLFr9QdzdnQIymiUm1cgZuUBjDovJivzjjEl4k9qWQLDI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771025694; c=relaxed/simple;
	bh=Q4/BKUCERqB9WkZabtzy/CqC+SxHHzKuLAJ8t8+wUE8=;
	h=To:Subject:From:Message-Id:Date; b=BhDmfBqz1FiNApufbtpZ0na0L7jWbqJL3B1j7ePT7+LQYVAOqKIJtAlk3oyc+Axxuiu1+VKhFhEiB5jBubRzZr4Cx5qE+gzWnHyiDiG3/D2GM4F0efJ2AQ0o5QOoJKzafNTczQqdeN18K4/JAIueqt4OvNVg5aXe+uC2j8vaPVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ephiiNFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ephiiNFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD076C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771025693;
	bh=Q4/BKUCERqB9WkZabtzy/CqC+SxHHzKuLAJ8t8+wUE8=;
	h=To:Subject:From:Date:From;
	b=ephiiNFMkR0ZLAoGUFs09jlikGya421ogvcQsD3PD3h9DG+dvS/+hXnjWrD06lgp1
	 sG8L/ItLte98RwVIZw+L8n9Ts1wEnPiWdVzacke1x9MoYrkhu0/8DORvT54RrDFXsN
	 QoHo+DnA8D/ZwYFZ7elAY1lB26DLD8p5lK9nCep+e4wlG+o58mdq6X157u5u2Jgk98
	 XJoQho6IS+dAqk2fFaFCZGSwUMzm19bTU0POV4/P94UAY7T0as/9dmM2k3Y7wqN4zd
	 U5ykQh7HqaVl+HoH1vd0ud4dv7iXU0Awn8J0c4yKl0ypWHHJU6PG2MZyYMXTLeYPNV
	 lW4IxBEMpujow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D58EF99E5
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102569364.1290.3162458186615412611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7961db2d64428a3ef2ababb713c9def199ab8d5c274232179fd0fe7ed10bd347
Date: Fri, 13 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771025693
