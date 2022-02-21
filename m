Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF52320E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645409785;
	h=To:Subject:From:Message-Id:Date;
	bh=deBTxM8rrPPa2jQMo+NpYq0XkS1lpQLGpwbk/mNVuug=;
	b=K5K/srGfdfFwjWWnlbvITPaWr9WQA7SMAxa794fg4Gt6Gy1ZwxirBaqPFZoV8IUL
	xuKVtqQuAiYhJuR12gTKFiFH14biljcObdy5SKH2uvzdV/SxLuLrkpnIOywjFSZyG/u
	6uAu5OQQ7ddLtdkfMx3ptQG5j6vXG2Gw4eHCrOGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645409785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=deBTxM8rrPPa2jQMo+NpYq0XkS1lpQLGpwbk/mNVuug=;
	b=diyhcVKGH7EYRJ+W8RB7TbeivDLCeT1hv0mdQDmMWmcdHU3o2M/5H+LctDpfe1+B
	CKh49pHxC8BUSMW8N/Z50ySfxZIuaew9Q4W8EM0Crzj+10FoqSXLU6Luk2A8AgSe4PS
	GR5vTd3EOeOMt2INADreFf6tmJPU6sA6QMp30mBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a10d3da-2f0372e8-6905-43cb-bfa6-6cca16dd34dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5d33b7d676c388865ae3a3f8b517fdda936099dc4f8c96449afc8b0db4de048
Date: Mon, 21 Feb 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645409784
