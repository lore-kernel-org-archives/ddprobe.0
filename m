Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D1C17C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 09:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653040019;
	h=To:Subject:From:Message-Id:Date;
	bh=AvacuYjpsf8L15SVD0vrD2u/T5C2wRXd7viLEMaijn4=;
	b=QWRTkcpXvCPftnCwdgxQklkcNSlosR0qYn2DDdQ09K1IY+m5EoCGQZAvO7Q9YtQt
	dwhR1cxv89hugsqJg6F2mnyUeb0FmxF+qAyTu16mPd1y5op22iCl51OY7cneMvddN37
	zzEWHN5TYCzNV21TsKW5vXPO1lnDd7Ru5fEs58ec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653040019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AvacuYjpsf8L15SVD0vrD2u/T5C2wRXd7viLEMaijn4=;
	b=F+uqax9UMUeAgaV6FYJU3+SX60NXpMXOiwbFAApjsc9dTFX+rrX3CxOafHaw4w8Y
	SMxjyV4by9Y5L7/TvBuGZ1DL0edon8/G94uHpObrjuaCF240ITdef7zO4rEs61IaxN9
	hai0xGJhycS4PAqBDYWYZJe92YdQKf/njWrL2GPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0dcf715-2fd30c60-8273-45d6-a42e-de453d24d5ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc3353c07d0a92c32c7c9e22382cd72d3e9a8a1daadd32c913ff969c081cc6e3
Date: Fri, 20 May 2022 09:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653040019
