Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBA628E3F
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758445794; cv=none; b=osSYKmM8P+R9dC7/1FA1og/vlAZIM9fsV5Gb9VRaIFAfft0BBMU9l61+/CZ0XFf8jAnnWg3urO7qw/FS705WFudFZUy56VBzfyXXTXnVO4yUs2abfMTVPm+lK8c2rTYVw6ILLeAmOeg43NhLakIkd03D1vOb3H8c/f8Oa/4Uqqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758445794; c=relaxed/simple;
	bh=3x0G631c7KJ4/qKOiPJQ4hyfB2az+5urCzW8VNhL/uk=;
	h=To:Subject:From:Message-Id:Date; b=WH7LxO2dmbrzeLTqnpeTLsBkh7wqLlg+T+cVSdmaLf039mxI1WpFe7PZQI+X53W9oqkMPIVH4R9QrY/Ju1VTtXWU2Ivyd8gucwge1Djcf2p3ej1iJskuaX3RA8Y2EpOLMcVNVMlsnINsL4EA3szfH8FviJlKSjSUNidcglNthU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWv3cYRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWv3cYRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72AEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758445793;
	bh=3x0G631c7KJ4/qKOiPJQ4hyfB2az+5urCzW8VNhL/uk=;
	h=To:Subject:From:Date:From;
	b=WWv3cYRPSbPYYzU68QzcUbCYsdb+WxchDDyQvMEu40M6xHLjA0ifHUljIGDSRQXn+
	 cm6qPU9yKz1+GmyJdQvxk6r4FyzIZwg0DktNXRmnxN/BdnA1Df+mi7pIp1HPgkR0wN
	 TgBTCsEXa44vD/xb7Xhba6DbnF7qomS95Vvgk5u+PZEJt/1VmdRARjH7NZl4Avb5xo
	 JIJJFoD6dPGTY7BKKYRd3qacAGnaShR+AVGo3b6RumSM4Q+cd8Q1x/+1Byve1i4BmA
	 pjTcPbRElYFpyMoebJDVlRItJXrgZRi0HTKWEia0wKEp6T38rE0PqTT3KEl8DTwVQV
	 +SwqVfDr6upcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95168CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844579357.774.1564553368600146746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4455bc9a828ed2b1f82ca7a4fa77825d256fabfddc5502af56b3a37741afae26
Date: Sun, 21 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758445793
