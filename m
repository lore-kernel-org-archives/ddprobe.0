Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFEA7F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 04:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654576739;
	h=To:Subject:From:Message-Id:Date;
	bh=ZakEzsub9+Kfx3N0PlH6U7y8ltsa13P1CKHpnJdiD3s=;
	b=TIFY4qx859eDVvJ3FBQ4yw3EcBAceGdgF/HqkRmelMblXYFt1KCPzPLBwATMeVzE
	2NidIbOFb2/TZeD1Qzyr2Zmey7lUptZTkAim6NTh4EU97JGkil6EmX9L4RK6WFqP4FQ
	EHOVDRzMkomRoHreVhFhACAN8pyfmnMAr+wx9fVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654576739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZakEzsub9+Kfx3N0PlH6U7y8ltsa13P1CKHpnJdiD3s=;
	b=gXEu5hW+B2xTRf4ZOo0eSsFblNZMPAu8GveK2izv86QDRHI7j3knN/qa8O5P/TS8
	2EeLFILFoa6AabxqLMMRbgRa9zFMuxdY5R0C6/sH3I93ADgA8URTV0SWHSLcxZmFfc/
	fftPiWRw6Glx/KkBR5RTC7YSca6Ezz/5041X2oA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813c757393-22ff6e89-1066-42fb-a313-9cf87909997c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20194eadb70dbc60d7b1352b2eddef1657bc20a6c502669d475c08ed1a59352e
Date: Tue, 7 Jun 2022 04:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654576739
