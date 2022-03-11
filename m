Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B8F7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646985985;
	h=To:Subject:From:Message-Id:Date;
	bh=1sT49+/P2L52B3xPpYmfNGypcLzRSWY3cAdR5wTTfrY=;
	b=KaqCeNhxmwAiYRC75LTPiTJBZEXnkvQmVFlfH6t3EF3bj2hZ9lzcmBpaiRoeewUb
	Gd6UsAKgMHSDAwnitvZnA887UTCdisWFqWOMH5zaLd/VmszUrhpaZ4r05DcaEABOtrE
	/Blfwlvq12JZYqt3LVP0xeR03EEO5leeux2kRgbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646985985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1sT49+/P2L52B3xPpYmfNGypcLzRSWY3cAdR5wTTfrY=;
	b=DgZorPeWTp8Wp8lEmRjkF6ZEyQEjNVNmrmS82EjmLAhguWUihHoo8YbuX5rxZ9y5
	89JKPYGdqvRCVtWsgZ/42EQg1xN9b+EXtZwK1sbVjzKfcBp+ytSk/ExFyYsqAkbsCwq
	hIlULzx8SjhkFU4NUXokf+ZcqqqWcBjZLFZ20e78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7803bada-2cd33b89-a286-4bcf-ab73-8881952c9b06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c084dc750a704294b78f024061945fd2f7b0ce04f99b13d55832cb86334e48a
Date: Fri, 11 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646985984
