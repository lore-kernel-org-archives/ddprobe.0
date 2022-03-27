Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7533315A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 13:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648388578;
	h=To:Subject:From:Message-Id:Date;
	bh=Pvwh/AMk80WWXy1O2HjWEqLL6COAfDWfiTi8l5rMUqo=;
	b=l6U/XyqjL8n9toMknrqDOQwZgAndq6dN7hFrbgr/8PSu/iScrB9tp8oeQUVl5vSQ
	+AzF5I2XMT6v/izkfBWULWP335OueZGA3Itiqp2RVz++D379Zgqv8aC6+OnyOVuqmFE
	50Sr8RuElgSDQg//oF361WsFC4TQG/isuPS7Kf7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648388578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pvwh/AMk80WWXy1O2HjWEqLL6COAfDWfiTi8l5rMUqo=;
	b=DHCkS4ftnqve9vKjgOgdiWOzETmPzpAqDcQB/44HtN+07jJ0glMwTMczMDEGtju6
	xrZBgE8OdZEjgxfe2vWE63a/L9SeBjb5nIXMIMbxtewO7xfuTSsd3MUNP8YbJLy/l/n
	PL4g9LoRvZ1s6MxGtZ45IUoeI4U19QVRJdThlnxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcb9d9c12-7cdebcb7-7beb-4ea6-820c-4e3d2e802219-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d17ca6b0449a9696fb675aa08b1137c7af6a604dff70dc65cd281ab9410682c
Date: Sun, 27 Mar 2022 13:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648388578
