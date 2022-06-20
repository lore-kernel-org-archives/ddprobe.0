Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B037F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 10:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655719799;
	h=To:Subject:From:Message-Id:Date;
	bh=9oxw95jvjTy0acx7khqreB9eiZ84qsNMdo09voLBDTY=;
	b=bJuAwRaQhh+P48JwK+1SBqiPzAjf5Kdam0yiwGvUSJdwF5pSumiVkBeqNHDNouQI
	RPYorC85yCYgHEGSbIAiXWra+To1mBcLDFoDj/0a5h5oFpvlSfC62DtLRnWAPXA2KpG
	JSYm+GOmGs6D9xuUZFK0xWsR1Mrq9Ps56drZUhfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655719799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9oxw95jvjTy0acx7khqreB9eiZ84qsNMdo09voLBDTY=;
	b=Acm1hdKwPBnnX0KYthB2f6QKVBReMtzFxwFU6zY+gXhwOrfQYTHum+B5rS2FLSyq
	sizBrtkXsOxURSdBqbH372Zxa9VmKSFHJ2Xc/PqNFrv7B2qlqbV4CbiIzgXKE5F8+2m
	9YcEgNGjcLjEnXkVqH4HVrtg0Dpw3xkWLl0p4Pvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181809729a4-ab58904f-d4b8-46d1-b8ac-692923de8daf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8240b139d6336818b3edcd37566c8942b7520e0c3c7ef895a937bedd20d5c826
Date: Mon, 20 Jun 2022 10:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655719798
