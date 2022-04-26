Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013097B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 12:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650976078;
	h=To:Subject:From:Message-Id:Date;
	bh=8lJtxgV70ZSfZ4x9l/VlFqGN5GxRxVNW1RimsvPwtBk=;
	b=Nk1hHIRUcHDY9F8GmS5Paor9/3mGa2aTSLRi192k5xBT9QFCgiDQx85k7uedQN+Q
	onLmNKg/5JoX3sx6ISOwXHTxegCaHJGxL+/7bnVdI7HHtXU31rXLenL+l6m5b0VWClr
	8/0BzesFsgmyPY66yvRw2KiBJU5dTreu3NZnE56w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650976078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8lJtxgV70ZSfZ4x9l/VlFqGN5GxRxVNW1RimsvPwtBk=;
	b=J/P8Pg2vdtzlAmcnxSEG6ruzq3MdLp44KdGs4NArJUKrFBhVkvoLyj8OFTEzTeni
	2FWUXi79bYcEV2aAtrGbqopEPDcaf0C6r+92E6uZPv/JSHXRP7eu5yTMOH6jkPIirVG
	SHCejNBgb+XcFVmeDyM1ow7b22ViXp6cL1by91q8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018065d7b9d6-e46133b7-a219-4377-9221-fec05a248ab2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6762e802cab3b95f49310cadb6da8b9f564e6e43894dd97f72bde5279a908e80
Date: Tue, 26 Apr 2022 12:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650976078
