Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F07D20E9
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 06:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649312758;
	h=To:Subject:From:Message-Id:Date;
	bh=fOkY/ThwlK1iU/FC27Chgawfxezp0/4XSD8OBVUhREk=;
	b=mSFxqda8STcWezvE7201t1EdbXhnO/4GxJBnC/jZmsICV13q4gv1p9KWpwgCAhBU
	pz6Zm6wfKPRqkaQ+Av/4T6V395KcTeAR2h5sdXyDyt5fxl9OnxaYzIYuYVc9DpIN4Kx
	AzCyuIZqk8XfL0Zye1Jx5O1MDuBEKygRClO+XHtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649312758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fOkY/ThwlK1iU/FC27Chgawfxezp0/4XSD8OBVUhREk=;
	b=X9E4WesFLZ6g+V2s59xOaFkTEzZnkKly0XIpoKv4a87y30Cs+5i7l6R7zd0hMO1/
	vNE2Vdg1ZnKN3rVzyvx6swtNEdZ/dfIVtWhB0HrM8lwYnKC3g4PAh3r/vqzr2keYlBM
	QkpkaZjcKYjrZW0Cx269b3rjGVSkE5V4dx4BqIwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018002b37a27-47d276f8-4d73-4afc-92e7-b4117b119d47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d87b1e6403ae7d533108199149b56c088975d3a4ba0350ce2da9d6237e31329
Date: Thu, 7 Apr 2022 06:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649312758
