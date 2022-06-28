Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28C47A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656380212;
	h=To:Subject:From:Message-Id:Date;
	bh=LhhecpBl0ojcgafSpFukSBq8JCkqp86Fe71ItGJsFqk=;
	b=dF3HvswPIHzPcJwLm0Hv1FNUyGF016aPd50+0JykLGxC6Wg/mZYFpHYrLKMzlXkw
	oQx9xA7hE6grjsaPlX2KDuHeFZLhO2pMoaWxYJw1SWUrW8cV3zQsFv7n+BGjcQQjrby
	SEZbh2QNU5tE7LH3DgDv/hJ4b3FxqMEDmwr3KwPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656380212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LhhecpBl0ojcgafSpFukSBq8JCkqp86Fe71ItGJsFqk=;
	b=goG9gROjIeooc1iWqwnyzMBB9E3a9QHqYY/ydC/YlFn1K19lnDh+KryxJiGAU6c9
	vMigxS6B3E7epb7Physmmdww7aHdNBYqaRtZOmpCi65V6s6bSVYJx+Awii2YK0mQMNu
	FouHaNOLo4cE3axPGJteiwjgeplMlykTH/ttMWbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a7f44448-827baf48-aefa-493f-9982-74530287cc99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f8873614182d119a53d022e5c19164567a5109a967a21938d9c77279d0266b4
Date: Tue, 28 Jun 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656380212
