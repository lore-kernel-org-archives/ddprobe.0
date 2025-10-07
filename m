Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D7A2D47EE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759831794; cv=none; b=oWsdnEiEJ99+XDwxpz5Hxn89V+5rQrOhvh/vVS/PEbEMbd/1VYq+T1NCe5MYaZO5q/bR+imFilQUumbekgqG/zvdn6lbhXVB2ex1Pb9FiwPt+8DflGFMS0QLPN8giU5WMZb+3vrPGOZexXepzEcqv+eY22G9+2qrDcy6kx5yXis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759831794; c=relaxed/simple;
	bh=GVbkA6R8e7cEJ60WPNqS2am8oF3LxLMAWd6aUecbeQE=;
	h=To:Subject:From:Message-Id:Date; b=iB4Rj9Ge2pwZO/zWLzc5rzDG75+MqCKrzrOYr643K5examYaEs74yVzg8yrhIf6xlM0VOtEW5yYQvt6oa7jzfJjCpYrHBQginGhEg77HAU6K1w2zysje3u+/eFHxfMHiaGKXlW3IHVyY8hqCo3bhkvQtkcqrP4wYZsE3C+HV4xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEIZo85U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEIZo85U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EDAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759831793;
	bh=GVbkA6R8e7cEJ60WPNqS2am8oF3LxLMAWd6aUecbeQE=;
	h=To:Subject:From:Date:From;
	b=eEIZo85Ue0S1k9nbiZZwT80wkivg4Dh+0Pg16lHrr2IorNwXJXx5EEZ0uquVJaLoJ
	 HenrBC4BW+DAALJrWa0q7j9RjZDFpRJeEjl2XCRPNNINBfcbhVTSRbMQ5bFWIHt6cm
	 8i9Lsn/eZz8FXlux4loYS+MMoF+tdI5MxYW5yCLv/hr3OnR6zoSWxDBKckMshcAMWw
	 Qsng51VZ6bHvkahBmxUF6UWwrxZqxw2JsGyq2DPyrmd3g3L47BgUHfai+d92k/k/rJ
	 4FfyGG8y5NDXy/DM58Crr0TpnAvtaL0q9hymWhqdU/+QKh5hg0GDJasWk8LraupDJo
	 nL6rwviyOxGQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266BCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983179358.11151.1268030933962778338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b5057c2b3dee0b7141dcc70f24f149d87092327ae1907684761cf136ffa0d7
Date: Tue, 07 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759831793
