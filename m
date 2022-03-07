Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BC053B53
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646667384;
	h=To:Subject:From:Message-Id:Date;
	bh=2Z9T8xOXTOh19sSipnncHQTPTd0rLGadt5NXs5/O6Ac=;
	b=PLUSDkX05GCNKIDMiESCTYWbXXDAz4uQPyCvxfYz3qYLssq5rym5OWqvTmum0ei7
	MFrNwQ4+Cdvko1TjNOFsyCNX2vpjZ24v5MNygECHax1XBXt2p+6VDTUdYOad4aZZlO0
	bAjAb6fk2T53nQQ6Kz+AkmHDdbJjs90vnOHZYwRE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646667384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Z9T8xOXTOh19sSipnncHQTPTd0rLGadt5NXs5/O6Ac=;
	b=Zf8RGAdvPlrkaH3Q5hMA0QxS3shZ8wBZ8q8MDW2+OnQb59DnIi2CzN36m0H6Rhzp
	L4v4WPwmZvZnJ1Rkl3hoPGnB7MXcuWWMvY4c058gPO2B95ZYP6FVPWxsyh+ChlhHe77
	2fpIQ1s0u9TI19/x62Wa3m/z63VzdkK6CEgJdNuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f650647aa-d643d19e-0183-450c-88ba-9e88230b7cb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca02613cc9559cf21fed952ff0cf94b5b6d4758eaa34400d5aa41e7e505c56eb
Date: Mon, 7 Mar 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646667384
