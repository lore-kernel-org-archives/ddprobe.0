Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D061139D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645692384;
	h=To:Subject:From:Message-Id:Date;
	bh=JCp4zsuyrHrufisQ2qnk5LjepLeG8A4TiW3aG/a2i6g=;
	b=AU38D/ZdjCxSJHcfALmS573ar9vVvXvu8aoxFCY/mkfFrT3zvqTuC7azGKqpnEAw
	Ehh+VBh2mWMY8ptNv2IXEnY371Au8MgeFGoiYIzp8163uP3prCjpnrbxuyuLuwh0+65
	ydZRJ/hFCgiPOZgP0JHtTeEDwmp+Uod/inD6E1KY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645692384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JCp4zsuyrHrufisQ2qnk5LjepLeG8A4TiW3aG/a2i6g=;
	b=UwlBekX8DARlhE57fxKcsiRow/Qhtc2CJsBsIAY8W2AdXpU3UrOyyAF9yCd5ClDh
	cASVqbjvxihf3X808OtehWSPQxkL4LDU8tQzaAIvTOvDqkZwoh3wFhiRw2fjTnM2CjY
	kRDNi3K6kDLfvpD8hP+cpW5os9RUGaf7m+KA3pqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ae8f61d-fd6c4f33-4138-4652-881e-3471633ee511-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a342c54d270e2dccd8954945fdbab007929176640b989dd8cdee4bebb9e227f
Date: Thu, 24 Feb 2022 08:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645692384
