Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4717C7E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647193284;
	h=To:Subject:From:Message-Id:Date;
	bh=+TyB7yk6p3tCrf6pqOdeLKayZGcIZaj5DaeENUInGUg=;
	b=IOvUrec1AKEFlVSH5nt80fysslAAhH1NtHwCMIDj/AEORCjzks4Gm/vXbLpX8N5V
	4Mwqt1GkLA6JKudEuPdI+sMxnC+JwlHUO2F1/7+l9SMeTiUaptA/u0Pa1sdnZSxozNC
	j8hpA3gVjY3MR83dOUqeDu4x3vuyVWV17mXalDNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647193284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+TyB7yk6p3tCrf6pqOdeLKayZGcIZaj5DaeENUInGUg=;
	b=BIxvK4E24vjyhsA81SprD1kokKjirgrYQ5S/SFzIXCP8UQS3h6gSuUEd7WDLDT8i
	4hOmVCQoUU2TheB/YO1f6vXBPttuVR0VZQ7lITxtNWXb7m3liG/LjWclgXm6ScSn2z3
	vaH5z23wwq0g4SuY+IiNseE13vUUJbiuDM21NzbU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f845ee085-26e425c1-6cba-44f6-9445-76e7ef66437c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc8250d51d9ba18ce3a71a12d619d04a2f1f682642aeecf388c55ec6c55db6bd
Date: Sun, 13 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647193284
