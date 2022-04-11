Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E816B10E8
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 12:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649680378;
	h=To:Subject:From:Message-Id:Date;
	bh=GHabGphO2u2FM89DWt1R7fNBbsIuzJ2kPiCx3hMrrBE=;
	b=J+q9WE8RFWfDy8YXSCUzcYEJCsSWNjZQ95xX1n2rBhUC8ShEKXmblmVTfShsvQd7
	N9C7Z+74Tyy0P0kW5ejWHKEfGsE6HJ82M8kqHStpQVk7Pzy7hx5AQDCEuZxyotB4UP7
	39rzoo02gaYoU+Y1nQHZVJMvdIIPAY2BCABhvKhg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649680378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GHabGphO2u2FM89DWt1R7fNBbsIuzJ2kPiCx3hMrrBE=;
	b=g7CUqm9/80orXbB/a6TSiL/s45Tzr7ynsMlS8IYXUDiDaAMMHZ1egO1U32Nko7qU
	+DUDBb0vWfMlGlevQjmlC5SrXdEdQyBX9fV/v90C33SHgukCh5UInF5tDnye8lMb4oy
	MSg6IK3iQ1KIPjQIEvC9J/P8ALDtgOC0wYjObBbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180189ce982-77442f23-95d9-47c3-afaa-b0bc0cd19536-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25d40423bb8ba1c76ab338907c809881afed8bacdee9cd7b4c651d9e7598cdd8
Date: Mon, 11 Apr 2022 12:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649680378
