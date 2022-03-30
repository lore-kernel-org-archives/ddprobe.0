Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540CA366
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 09:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648632718;
	h=To:Subject:From:Message-Id:Date;
	bh=J8RE6uRNcysd6X4yTlpddC1Zm8JHDawTB7zjN4rN/Xw=;
	b=MEGbVbvO/0i8FuIOnO3nlnfOsn58gEBGgmGimoexMuSKhefjqJiMA2wQEQbdIEzw
	LE32+zX36Um6oZE1iWbETAr3vTZdjmSmwN7muQyxaNVxuMvAIo0j5ocWCLX4t8MpmCS
	B+A7acsaafPY10XIiv0M2FhbtAmxGXWeD/Me5sjs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648632718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J8RE6uRNcysd6X4yTlpddC1Zm8JHDawTB7zjN4rN/Xw=;
	b=LnJoELm1kumz9q8mWy5HqOfgOgLa0GgUnqVQclS4fmgwCrnw/dlEUQbOggOZDHXJ
	lkkLaEKzybtmY60z+t7vnLOxt5IY+iz1Khnp1JD9dw3TbVjd+TUlWnSFm/3X1Y0b54O
	ZnHqkGA8Ie6daD0BfhSfgpi1kuK39E8NjqTgAPjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fda2ae44f-1cd566e8-a572-40b0-bb45-b1173e143474-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8664b3d1da3e834f1281a99a21bd77d260997d5191dc83d1d4f04857e3040c48
Date: Wed, 30 Mar 2022 09:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648632718
