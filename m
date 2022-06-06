Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B84923BD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 10:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654510440;
	h=To:Subject:From:Message-Id:Date;
	bh=0INyWNKYxHyReuI5riRGiRM89Ef45RZYh0DbBN1J+44=;
	b=HtHR2UyKoKaIm29FVhVjJtIV/A/4wkyT6HWWpaSNBDW6QPmsBbOTRD+q4E1MJsOz
	TjeVMY6WkKhffuB+a1+BBLIi1MHkXBskcl5rqFgrHdrpW8dBp3mXW1XAbEqqfISSBZ2
	Bxc5R7Cd7hFLlaRjQNDMaaB1VA94ypRZuzbu67nw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654510440;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0INyWNKYxHyReuI5riRGiRM89Ef45RZYh0DbBN1J+44=;
	b=X5KY+wETc+K9n1p4ip74q6VsWK2a8EnBV7gwxuvnkEQP0VgDrkIgoVRT01waQ/Jv
	ZH6Hsgle3CHsPxEEEZnblxOBx8N58i3s9vCSMylXOWO03LdasVk0CPQu+Cwa8fA7W+k
	rQ8iuhB7lh35GJlDJcSslHMDTG5frWzYgy9ltVbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813881cb65-93dfa0ee-fe50-4818-854a-c568bb8c4c22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91b5e68cc06665c9bfd51f85c4f5457a47db6ef69f64903e15e04b0efd729e28
Date: Mon, 6 Jun 2022 10:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654510439
