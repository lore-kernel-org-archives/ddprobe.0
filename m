Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12AC2568
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645434985;
	h=To:Subject:From:Message-Id:Date;
	bh=DTSSC3LuVb+UgNrbtKSem5AMydiC1YrETZ8Mzhr+umY=;
	b=LhkUaNI5sfejY/YFPmnOxkB0j83VLu5+NKLqkboKZEp/9G/qazgCviFclGWH5FLY
	0yPE4GgGg/QRXJyqhnIVPS3EbkOBnn4K12he3lIsSUgpdZY4L0DCIyHGpQYd9ETjtXP
	IEKG45YTXLXZ9U9zD2T3qIR3KsKNuHqYfASUkVyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645434985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DTSSC3LuVb+UgNrbtKSem5AMydiC1YrETZ8Mzhr+umY=;
	b=Cb2dMXKlLg6Otbc+VxmwdSZHLwKhAGqXJhFZT0xvhB4/iytcBT3ZeoFp6tFbE7Yp
	ERwWB2fDlfjqBuAVayfsKnqXzJUOoloLU1QEcI5vqOa/iy/b+Ms5/YH57hB0hkYo01q
	U12E9EYOHbNI9o4N12OXaW8WuZ35QJkpTZlwgGgk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b915a18-df32b1f5-86ec-4f08-a886-8107a4e70e84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 343b86cf33f897c429580b40d52f6281b997ff7172e085a5684e1935ebcc1ab1
Date: Mon, 21 Feb 2022 09:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645434984
