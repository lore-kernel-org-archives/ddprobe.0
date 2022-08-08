Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E88D1360
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659940852;
	h=To:Subject:From:Message-Id:Date;
	bh=mrVLuf9fHysBVs795Ic1Pmnnc3pLrU9ighODFnUeCXo=;
	b=jcogoTe0aNK7Pqs0L72Yt8Uxo+ETbElH2/WIcTRmGcMboLebwPmbdwsIn6tU6He0
	ezoUdJd5PZTWea3BvgNDBuYdEMcbmDbTAvfjn8b2pXrykwYR36dkAkzYZP/A34TIJNp
	+zfiPp7nUt7OzCYB1/+kUUPgdVZOUkoerbgGXtG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659940852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mrVLuf9fHysBVs795Ic1Pmnnc3pLrU9ighODFnUeCXo=;
	b=SWie3dYwqrcUlvk7cC2nXSPa3Mj4ExIYJOwb/GA/Nvz5mypIioNm9GpA+5wWaGHN
	OVhnu7NSE1R7z8lbBh/nPaAmoTdJV/oRw5TXun13sqUqbqXPgFYSo8o3o7st6DkjXMR
	iVdjo5mloU+bQ3p6CIT+0JojM908dHjYxiMZTWgQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827c2f5349-aeefce98-01c0-4067-93e2-aacca139d82f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd6580b336a5fc06cdefebcd5c2fc9c3c11c853f42e51d540d364215e64fd4bb
Date: Mon, 8 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659940852
