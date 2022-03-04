Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3297A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646399485;
	h=To:Subject:From:Message-Id:Date;
	bh=xsFM8tzMZsb3XgHL4pxoJyJnFQOb6UGRC9LNhS0n8MA=;
	b=U6KOPNonr1NBT2lfS3Qfu/BkU2Bk4DsM4voG4cRCKwYZ624UriGv1VOpiEz/tG2h
	/gBo+uFVR0401I60pkZ6iiU6VezMGUPBsbLyFtTWEhdJXUgGqZ0II4DDrlh8OwuSVmS
	2Z87o3osnn12PUUovbBugtC/Vjz+MU8lXMr0jo5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646399485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xsFM8tzMZsb3XgHL4pxoJyJnFQOb6UGRC9LNhS0n8MA=;
	b=OzEYGdjdXRS4NEI7GOVKrn/Rggok7i4brr9Nb7PyBnSyNeI2f9TzZCK4+6/7ey9g
	cN7UNl7hnqdrM1xF73iWxeDx3tABXr1jUAf33ivirFkhNJ+SfOSyayNKsxgoZgdSZWW
	hnG7t4OejCMabvszCWY29EW0en2di3odKr4cb6fQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f550e7365-19ed09ca-7caf-45b5-8dfa-27ccdebfe4c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d560424a6d7f9f2ffe3363ee150ff4e4404dea76749d86551265d7dde8348e36
Date: Fri, 4 Mar 2022 13:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646399484
