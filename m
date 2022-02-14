Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F1AA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644866795;
	h=To:Subject:From:Message-Id:Date;
	bh=AKrkzpEezf0CDYN7fURv/cu1uKOEpwknUDFg7Nd/isA=;
	b=YaMb2ekGH6FTUEORT3bbAoOcOCSBxtVdXhm/Zxm4Q585Mt0JB48IRdrF0+o5rkUW
	Hm7zheLHWfQArtdK6ikxCY3aqH7vO5W+xVPuayLWOKOVtvfbc5pvDDb1E3QObNk+Jcf
	jNo5TPLCVxWLnTmmbaLSOuxz+ZFST8ljLqHFxrrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644866795;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AKrkzpEezf0CDYN7fURv/cu1uKOEpwknUDFg7Nd/isA=;
	b=F2MlzAJBKLmVvBv8jTtnNYp7Gg3/HGsXSy4HmI9rhWsckiWRNbYu8wcc9uxv9xYj
	j4PhZenugeBAvNE1uzVma0K5iM3IXGhJF1vNUY/QSEF5tPE+ZtuO1gjs42Bss3B/yko
	t0JvyiuHSy9hlMuomHatZH26hdUoiZzkVipEj8A4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b37512-26190624-f59d-4ca3-818b-6c1a29209266-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71b87c0c7794654948df4dd8d1473bda91c17768fca0d77979404235defcc954
Date: Mon, 14 Feb 2022 19:26:34 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644866794
