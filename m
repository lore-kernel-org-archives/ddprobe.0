Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE4917CB
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647655885;
	h=To:Subject:From:Message-Id:Date;
	bh=iMFe2wEz3/15WCmUi9rq76IDhZuwM6M8+uybjBhrQtA=;
	b=ZGtoeRN0M8exz848xR7embxyzUU/nBuzE+YNRVnHwDnYfIhLOxqwbkgM0p0WS2tP
	0nR43KVa8bxiD1a1RE2w9Eep6fm4Ce+K6J7+fehIhMTTzVz5vh05L22r0ytzsJYGeMO
	a4576dsBG1tDr94nmALw7eadecA8FUiwfeZ1IqYU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647655885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iMFe2wEz3/15WCmUi9rq76IDhZuwM6M8+uybjBhrQtA=;
	b=Gg8kgWCFCEFOsxdiY4G/ht9+IPXQbfoN91IeW+JIET1EikIggtbS2SFMpU7sNFOe
	+ieXaYeiEE1Ot3Bqw9/OAGEXZ8jAvhhdf7sIOfVazb6uUdTlfInto7mXALhRpBGnpeJ
	O4Uepln/57AuOvVwqFM7SomoxTA/8UJGRN2JXLyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ff197bc-3698bad8-b00d-44a0-a7db-d3f5d7b60fa7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11246ec9b4667a307f406bda82b7cb5fd13d92c39ce9b9e40c907ca98fff3e3e
Date: Sat, 19 Mar 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647655884
