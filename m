Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15014623
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 10:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649413078;
	h=To:Subject:From:Message-Id:Date;
	bh=jjEqD5xqoB6lw9JALxGUnQAHhr9Xy8aDZnmLuwVKMbU=;
	b=JYfN8DEAxONKj2tU2mSPhZzFZx213y4gkX2pBepQDOMS6NCXXYje02Mp0O3s8ZOS
	gWmOTH0OF0Rrpl2ahbr98R8cLLxq7GjDR8j6hkey5X3aLwtxCYiMF1mpjB6+r4pEcrx
	/W5xg7bqiPrVTRnTqeF8Zj3nFubcMykhrEF7nz48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649413078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jjEqD5xqoB6lw9JALxGUnQAHhr9Xy8aDZnmLuwVKMbU=;
	b=k27s1zTUrYcHWuX5I867r8oRgz4+0biqevfZPpBELDq4VzVtWJSIMCpdIhgvlrhK
	pnf8YkLwogecjbW/Z4sVsRFNM2GB9IS1262ZWzrARpY4U/8RvNqFaVrnXEvZKhdxG8y
	0YDvt2ZYOzygvCJ0zDQIQK7WqBH2opsqc7GWIPJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018008ae3d1c-90c09194-4209-429a-be8d-322db8e9c918-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edf3a2e9657331d8d4597ca5e77ddf4dcdabc673937837c5b96059e10af10705
Date: Fri, 8 Apr 2022 10:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649413078
