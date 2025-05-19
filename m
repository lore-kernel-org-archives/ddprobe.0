Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395D379FE
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747682395; cv=none; b=R5AVkWTpbAvEoHQ/KAkep1KGJaB8L2VlABpGkJRiqrqrV8KONp2tMrnJUDgsIFFY+m0n2YcR2lL79/4RxG6ur4EQAryPP79IDAy3l+gfJ64Js/jdPWriFsRW8RUFmoggTQJdZVVtiGBOjrWUN3h587Bo6NvDawjc2WYWju3QGxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747682395; c=relaxed/simple;
	bh=CeAuOkgq9oH7jPUtp1QZx6tI8Esi2i5lNUOMDAU0NKg=;
	h=To:Subject:From:Message-Id:Date; b=eT0KITtObxBtKnhp2K2lxfgTebNVzkrsbJIjLwrcuTtLUdljVm14WR34dGvjPIq4ReCeBzjqv3fR+/igMJUGeSDNFlVVFrW7CumWN1504+VoLYpdo9UKOxlzACgFQaWGxsuuduKVpJ5F4aiwgrNw2uvDlOPFLy2H7hVoTo71HZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mP2O/Siw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mP2O/Siw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747682393;
	bh=CeAuOkgq9oH7jPUtp1QZx6tI8Esi2i5lNUOMDAU0NKg=;
	h=To:Subject:From:Date:From;
	b=mP2O/Siwpt9oZeQbPLbGWoGUkPAprF5LcsqrOeEuQn57EtcOHykxTsdyAhmf4q0eG
	 /2KFxpXdyaDrxWo3TkvElkYHtAFhL5v6L9ToaV0EgZMh42mqfyKTyKWoStXHJ/+uET
	 HJ/VSGfnC3omYFnpb1VknqUyY68HrxbD7gbF4SbAVlX1U0vDqFthGt+ZGkaU4ctMhc
	 9g18wVJDAmSqLc7HerTmkNuoTe18PtNcbKVMTYoGJM/GbVcUBN5dmR1yLcY9eI1vVg
	 rOV9+4ulH72St/2gdZuJYwdSjGshQU8Ok/0Q+bVtGV5jWAc7RzrUSZa8j1lL1ok7ne
	 uVefM+iVwAv1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B3C3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768239357.16109.2899467118614790722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470d38d1447e6adc2119068c9ac612d85c9f66981aedb1776a00943c88a99ee2
Date: Mon, 19 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747682393
