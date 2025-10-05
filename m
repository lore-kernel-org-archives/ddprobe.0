Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA1C35959
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759641594; cv=none; b=uQdYXWR5z7rGmOGSnYr6yl219yi9MV3Kmx+kBgIDtX2Iz38fpiTTkiAEp//8YUTAhgMPwtrArrsD/Wbaiv81UYV7+qfvC+4716gmoHf/bD3wf/efJz0caKk6Fy3mgkbF8F+M5Hoa8MQnhEDK4Eg8ixtB5Rr5aN02ijD3URjL7GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759641594; c=relaxed/simple;
	bh=Io7n16YdgTTEskMW7jjWVVVFkN/ACWMQ/qYi2NqD+9A=;
	h=To:Subject:From:Message-Id:Date; b=j0bo8KAvAPyiTFHzNcYOjEMxH/ccPkY3mkc3+MUmkvGgjc6r6vwbpTk1Mxo4QKNXOndni/o3gI7dVL7l1XUOsw5IJ4jEMkaUPOeCga0xIZO6yFfgpJRns7UtWVVplUZP5oyt70BRr0qoXgxGcxy/p9SnY5xCL7011g+s5N8oDvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpaqJfXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpaqJfXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC7C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759641593;
	bh=Io7n16YdgTTEskMW7jjWVVVFkN/ACWMQ/qYi2NqD+9A=;
	h=To:Subject:From:Date:From;
	b=cpaqJfXHPlBXoAH3T0AHTIkFRKiwm3KmQvSezL1XNHztYh/9jfIlvB/XMZaXQEKFh
	 STQSBKzbblaZA7RDoHDmf1rqIvQrHaLJnoA+92OjivHnjznjOOSfPN7eIwOenmf5Br
	 AwXLEjQueNCqAK5J/YIiSmHrcGLsk+UurcOSs25qS8IRaj/VV/DWeuGoQas4mhr18E
	 GhfEYUYUuLPYtKYnieVbNWsRI97zg8UQrOqOYr3tIOe5DmF+QjcYz7ZxDD2Oo9BEKX
	 Pbgk0uBWNRx1Nw7IqCzIRXIQmZmwx+CxWj89lMWU6M5tFcyNpiutrd8AkVkBUgxwMJ
	 wU5n2eE0l7frg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E03CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964159357.714.241246047119154015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5554aebc3919d904a1af0097e4454fb111583e0feb4474c1ce627e8ea89962e
Date: Sun, 05 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759641593
