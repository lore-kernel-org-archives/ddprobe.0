Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E3B2F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646514984;
	h=To:Subject:From:Message-Id:Date;
	bh=4bWNoIZTtl1BDJkNIOOcAjAJnP5Nft47XQu4KRjmyP0=;
	b=CVfThC8woWzkTun3qC4Hpku/xWpS3mfBYWO7d7SAoreySKj+ax/Fj3QJmpl83lA3
	7HwgjCknAzLr3PNG+C/Pa3mNdjgaqiJ4NTx3oG6JaXOjsLqdZ9TdFjk2D4vXo1UFH3P
	pRYdHZGKmNsReDvOdeyskyVqvHchUx1frLD29Yew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646514984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4bWNoIZTtl1BDJkNIOOcAjAJnP5Nft47XQu4KRjmyP0=;
	b=PNT61Qhelj8crTU8sBh4Gs/XTTVb2xpzLUU0AzWaqyXWVL2tkT5ybONJX41O8pgG
	W0MfBS7l1lC4x2+Mw7qTtHd4t452l8gkHiyvmQjCrias2XLdqCAGklxkpY2zJjx90hA
	ZqnjjNhqOnm98utReBeUcu1f3RwmRXbh40j7/Iig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5bf0d762-ca476384-5a95-4479-b5dc-5ca624a6f4dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10df30d9b8421b7ecbd6c24924a40ef20a71f120ed31629d8d1d1988a33237e6
Date: Sat, 5 Mar 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646514984
