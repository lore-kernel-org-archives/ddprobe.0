Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCC07A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 16:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649952958;
	h=To:Subject:From:Message-Id:Date;
	bh=URijEdoURIruF7gX44L7BrjPrSAOEJrq2tak4YnZOc8=;
	b=mKyBeA5/Vu2TRuteWXFTTM0AyrMcodxnOppuDF+PMQeBOPc4N/IJPwyK4dBXuucp
	Ud7radpDDohb2Y+dzzoJPVmBw9Ol8OdcPpFOjLKCLTSdUcPfcirzD5L6T4JMPd3niLM
	YFyErFNjMakNhFYp0oKnj/AyoIRlvVVLZzPvvwD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649952958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=URijEdoURIruF7gX44L7BrjPrSAOEJrq2tak4YnZOc8=;
	b=hrwgUFQ1LoNXU8POiU7vKeIH7IdFRXL2nlgRCO9smbNlvTd1j2C7tZDrXezfjOwM
	tB8EX77DWlqNhlV0smZcorWHaEGEK7uYu7nO+3JGakYXElSbbhzR425FO0PS14qxEf7
	+5at1w4Xvj7zKzXPA/wedVeNp7LuU71l2dFt2NH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018028dc27a0-aec61000-5aa1-4e9a-aa2b-520431f0d7ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9233e3b33aa9f8f0e34a8dce2f9d9af226dac63a7954da9867e4c4a9c73d030a
Date: Thu, 14 Apr 2022 16:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649952958
