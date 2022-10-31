Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD80917F3
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75708C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667187054;
	bh=IOVIILN5Y58l72TZHqkIkp0EBIyJ1MH/9yQ0SlyWPdw=;
	h=To:Subject:From:Date:From;
	b=rBcGFnrV8dSG+9RmqtKhSbBj5dTXIOiTrcsE+NHVuKBTv7aemMb/LOAtHM6FhHajo
	 3AMAUHv4wv5mR0tOhG2qFv1wMmoRn2HfTBYFmYaLjMWWbep4qyAbCJaWwE5wQ5BBox
	 i428RHYt/8lViLLa/5hBIm8pTmUO/N3gm766azQaQkjugKmZ1jubyOwa9SnfaJSh2f
	 zoBeoWotZ2yYWSOVXMrgiDalRVz3HmcLPd3hwVFzPViq96E70Md0zWkONN1OyXP9OM
	 +HrKTWc432X5e42Ik5jUfDm6FVPS602h/HmWk1tJp06AZ2/4PoedGRQtyFweiBF/gA
	 5bq8L0y58Y/MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54260C38A02
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166718705432.29792.5137123488953643831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2862aa12617779ffac49f9b504d22678e46cf98a8481188db9805b17a41c7590
Date: Mon, 31 Oct 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667187054
