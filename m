Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23DE163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647705985;
	h=To:Subject:From:Message-Id:Date;
	bh=7u9wSJhwpmnXfmyrJAx7DplfQY1msdubMLv2+J2mjWM=;
	b=OjE/psnOKdSqNUVMByDXPp3u4Hb2jsEbb5+Ym3MCjpkiSwd3olw0FiVZwEThNsFs
	tTz5ajH47GNa83cnhqTisjTgwz1YUTgb1u+oNduLZsqRwhbGHbLrM4wO1fDSAD87c7K
	dWGk4nfPyZ++KeTA1Yl1jNIQbZ7tmNrcVgUruxhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647705985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7u9wSJhwpmnXfmyrJAx7DplfQY1msdubMLv2+J2mjWM=;
	b=dthEIzFpmGo5YaoT0G9aQWCWhUxdHEnDDC/7H5q1Lk8ZoOjTWX1W73wXHUr0oUvc
	MaHQdLfWHSSSvoMQzQhZAk1T/6FSXKphBiGVlBDgQ3/wPjLVV+sH74oPYCkauvbqSjs
	1qrGIekR1Y31mr3rw2rFuUragWbZCTz1kzITuYso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2ee0ef2-ea81c93a-0b03-4f98-a07d-b4bc630407b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 187ed5300c8ba11304ed9d5e5d2f10b0e6ebe69f68c401fb93839fe0ed65f70f
Date: Sat, 19 Mar 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647705984
