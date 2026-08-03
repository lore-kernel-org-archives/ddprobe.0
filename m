Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4022F2045AD
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785755434; cv=none; b=fzxnudkLOMMnh1euNFSKo1OuupDRsmgwyCkXFe9utfcl+M2CkB35jkCz2xSuPL6LtqD6UPYmhNLZpUzWfrrl92YlIwp3WSiJCnpprHrKX8ccXZLNE1PL37pMf2QEbZTMW878p9rCtpC0OUHp9r3NS8qCv5820Ar/pX4z9q9IMog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785755434; c=relaxed/simple;
	bh=dIgBcStzQxge+wooRNWplAypdENvQ0Ftb8XJyIyCVZM=;
	h=To:Subject:From:Message-Id:Date; b=IsaXBZXuedS8GPzhIkTF6GujvCVRCCjjMVEUpM0DuieK1CWcTPfYfZ8PItZ0lEsi+fBcerKEkTu3iNlexs30zYRCcVEGYX5VgvCZ4iE4x3XB0rIi/70DMwpRH0k9oXyVuAeiTtizpj0SZeT/SjuyTEtYNrpKC1IvfOmhVIW1eFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YV+nIZM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YV+nIZM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECD25C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785755434;
	bh=dIgBcStzQxge+wooRNWplAypdENvQ0Ftb8XJyIyCVZM=;
	h=To:Subject:From:Date:From;
	b=YV+nIZM2/hWxGuzYUg4MwdXNnfPVBD/jz3Ot9+VsL3HEtnDo567Yl61QDQ9tK7LsK
	 zlLNYJ+kjMj4rMzP+4gE+zzENR2KJL2YpL09fztg68i/mNmULIhDY1Xk5w/SxFgoFD
	 jqlNgbKfl6CNbRNjNO6auuln2oXo8/cKGn9izm7I8IvaOJtesjkFboeW0aAHdWwEvd
	 SQ8D1rfngF5fEZ9XSJpifPJboXkFXFhF6+EFnlHGvauY2WkqxfNk7lqJ/oHEFStAbQ
	 NS5miYGz2Oow9WBW2n7k9E7MCyyL89KDE1Ehdhvsb6pv2J/rd23QMxjwHjgn0jyBXF
	 aHPd1Pc/VsUKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C77C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575543374.6356.13154955597273971239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbac11a236475ed96209229728e9638414ed5bcbaa8030d89a63b9739e320816
Date: Mon, 03 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785755433
