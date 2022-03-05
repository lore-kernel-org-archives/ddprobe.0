Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09CF12F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646517385;
	h=To:Subject:From:Message-Id:Date;
	bh=Uq06L4OWA0tWZq6QDi4Y5qDD5T0MJahmZGuhig+ccPs=;
	b=WyzpTW0zrTluq5OPGFFxLDOIrf0y/3yit5khPIRly3X8zlOIKE3qdSt7sNKbl5+/
	MEU6IQac7trMsfcoHpkvIrMG3veQP5KJ7JriMdZmjDS1hgVdWuZtPXa4IUHNdMgwwZY
	nsz2x/PGZFD9fStbjEZoWXdejM4ZWl5HIqjBq1Mw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646517385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uq06L4OWA0tWZq6QDi4Y5qDD5T0MJahmZGuhig+ccPs=;
	b=Dmw+3MiuH6DdlDLL7Ve/rnoxZBmA5zp3G8h6WXYL8EHcWOI23idvgttoRiSpUOcf
	/J4dISqsLbLGmcxJAc0/bVwPG8pXwj6KM90+r/BmcFTPZC/pTdqF7g5tSoLPtN//qTr
	HUaE9t9uh0R6bNe5BX8JFXjJEG9EGBFMc5syvnFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c157677-c49dee8f-76ec-4839-82fa-4b52a5d60a43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb84df7c9cc01b4464e3a8ef6ac50da119b0c07c4e20218594879ba1eb7dcb8d
Date: Sat, 5 Mar 2022 21:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646517384
