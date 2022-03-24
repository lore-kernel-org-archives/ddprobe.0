Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EEED7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 05:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648100218;
	h=To:Subject:From:Message-Id:Date;
	bh=p6asr4rKhd4bR982vmrv9C+OC1xrHlwMcTZGeLZgS6M=;
	b=cPVWelJhqvzeVdZiU9OvVV7mQAVAkOPUF+MxVMSJnjO27Me8BUUSDty9g2Crq4dC
	/pQXHCRfKJgSVJ+Us6iTYOpm7MOFvNsyFg1LM/6NFodCeMsmAugAAXZHGz5XCA1SFTH
	ZoZ6N6rcPc3a2ByU50tNYzbBrdOgj8dOOBuioePc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648100218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p6asr4rKhd4bR982vmrv9C+OC1xrHlwMcTZGeLZgS6M=;
	b=Cnbhg44oSzPH+4dCLfdV1xhvfR5T0ych72Ewai0pBDmNPyk7Ax30uiNUot/LDxEy
	X8FFzFvQdGwi96JpTCTLa9deOCXEp8VfWPemmT5pQeig4/pkZvgrZ7Ho9PSVW0ijU2s
	swYkRysFSeC8Eh4Vj747BIHvq8cTJ3O5imrFlsAc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba6d95b7-4bfae57b-c75c-4d1a-9d9f-5efb7b883a99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bb3dd5d0431f76b2e5ca9b5e536f4df6c633f52f22472bba36d38f3f606036e
Date: Thu, 24 Mar 2022 05:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648100218
