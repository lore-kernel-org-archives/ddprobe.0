Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADEC1FA4
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 22:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651270078;
	h=To:Subject:From:Message-Id:Date;
	bh=yl97CQ6nQHPBMMkpLW1Om3U9bU6ppfMR5BOTYT05S8g=;
	b=AcLr8MXf5silR/SajZdknE+5D4LbmZhxXx27DKNfcbqV3fqSe6VDCPRF59ZzMa0A
	qyi6B23GaDcQl0T+hvo2zymqWr5gyQErb0WDeHIj5Jb1D9dUW8OmzlJ/IEsNK5IgGzw
	A+1Adh3QMFRkl/sg6UlKxzRXU8r+zPnxETIv6AbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651270078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yl97CQ6nQHPBMMkpLW1Om3U9bU6ppfMR5BOTYT05S8g=;
	b=KZLleRgQsJzLLS9u8dJeFVm7mGRcqgFfpUuCG84mHtr7/V2a4kcuclT8+UQfNSb/
	GuvoUZQxuDFj+PfpIfhiI5Mmncvehy0ejdjDgcidIVVV4sud69dTjy7NY0RoJe4TTbk
	aqwh9nfqz26e/OqjLeKHOZAoTxgZuH72GDFXOV7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180775dcf0d-3f9d72b9-5eef-46bb-b792-de9096a9a8a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cf30a4fe4564a287b728f30111fb58d2f4dbf73be21cfa1583740d3261bdc1b
Date: Fri, 29 Apr 2022 22:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651270078
