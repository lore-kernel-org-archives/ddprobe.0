Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E90D7F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 02:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651544818;
	h=To:Subject:From:Message-Id:Date;
	bh=SlAzC7NfH1sxZWoKuGWZ2zcgsTBcQ+vBnbE4QBrSWKg=;
	b=meEbnBHgvXJ7AOeP8OiFpOMkRlXrZuaAMcDII2HmM2U8bYsmsA4pKhpVww6IHj7z
	o5EiMQH0rhNrJxPhi+0d3Jj7wvzma0i76wBq+s/IYsYMMQfY9JlNr889bzDy6YBxGp9
	oR0kceSqMn8h5HBIwLYI0h+KSlDgHtKc9UF2k8ls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651544818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SlAzC7NfH1sxZWoKuGWZ2zcgsTBcQ+vBnbE4QBrSWKg=;
	b=MgPOqFEpM+fItcaIgW0yo2CNTr0gqMG4pzlP2kchfl91YeAFEbfuTLEtBwlBpmp5
	aYFF6/suwjiy2Bi2C3ZqaxYbPbhBHgZolMxweZJRTFIDoUWTapmbL1S/gtWUqu36FxA
	Cbfd6IMidf7OSuG8F9nFLl7IIBKz+74OlIwTjQoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018087be0255-9d8c15d7-a7ad-43f5-831c-40e748bf573d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c7a84611f2290ca8dc0e35219eb8a66e58e1d599440fa492bed34e8f4270c64
Date: Tue, 3 May 2022 02:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651544818
