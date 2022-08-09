Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5094403
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660078852;
	h=To:Subject:From:Message-Id:Date;
	bh=hxUv3YjjNAhlnLnF8zEt/09XdPHw04sCOLN5EbWvMvg=;
	b=ApuevU0DgeKdWYgnrHFe7gym5qomdYyCYo7vXi7tCVSw32y/TkTFEIImY0z9H21h
	ioaT+fn9jHpLcsh1cFG4/V2qIlZJRlGx5pe2hoyIy202yoLyml8gm3tv9DxjsTlw9QM
	IVvWuub6d2mZJ1nCyI3cCDsXd12pTxSjodwlU/T4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660078852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hxUv3YjjNAhlnLnF8zEt/09XdPHw04sCOLN5EbWvMvg=;
	b=cy4gLQjAdUMZOaM4x/xYvDbYfVnhO1JzTq/4hZ14sug+aWtd2WcQXslY+/marTlH
	EmLSYr8TTAnMFJ3qj4qqnYWKtSpbQ1IikMMgOswbMEO3m7uZ1YkKMb9e77OTCaZgj0p
	9NqPcrEtiFFKZWVIcxJ2+GxZ2cypa9eaVV+T6WeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182846909c9-45e9dfdf-a716-4005-922c-e714c3d5d90b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f2301c8a323e97de73174017690ed238f3c52faafe552108dcd21b3b5b03817
Date: Tue, 9 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660078852
