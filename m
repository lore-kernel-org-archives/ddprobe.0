Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02FE7B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 04:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652155559;
	h=To:Subject:From:Message-Id:Date;
	bh=LfXdHRnHOaHmatMJfGGngVGzoR+onc8zwolThyxaWhA=;
	b=J+6ammCqa0MQc1ERAK7jhjHgGvhFtxcbN0GnB2mPk535IAkH/PXRC1L3nBCr/S8F
	2+eaAqpAnojV9O6xWejiSA0Kg0D9gVmfbVhFF476MGYl49SLVb+wbEIvYYY3uKNC/z2
	Jn9AEb5hVsuMYMLfvHvNsRemENK4I/F+EHtsMfnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652155559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LfXdHRnHOaHmatMJfGGngVGzoR+onc8zwolThyxaWhA=;
	b=BWNDJQkXjNUDz/XvvN+5GP2F6VF2HG3JhmoNAmRrxwwwV3eNLXFgN9C3TDeKlWhJ
	ldHsr8jqwSdzRyk4h8ipMDlIvet8KsDOdkow9JfX6wUyqBNF9CIKT7wsKF+NDQeBFa7
	eeHJ/Dvlbum4yxs3JixSPlyLwXA7+JEW6nDez98s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ac252d52-abd03aa9-8af6-4f8f-985f-a1974c007045-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d90bdfc5038fd4cf330b8ed8170558d43dbbed8561bd8334aacb9c3a46bbd250
Date: Tue, 10 May 2022 04:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652155559
