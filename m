Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1107223DF5
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755064793; cv=none; b=fjvXS6BTphsb5QFdcVnAZej7TPKkVjqI7MsV6mLyeEAQ1KhBgiSBtK3RO4lAKzT/+27WWRWtmmdv4SnjI9AAvCvsr7tQkR8grNyo2dNUaym9P7cAoZwIJoTZxToVRf/HsYRhH8a39UtAxpIXg+8d3/dXMvxkEBoSkP6IFvXHU8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755064793; c=relaxed/simple;
	bh=I97EhOxvatK+gtuwQ1kHBY/j5HjWTbwBliM+L6vSbTI=;
	h=To:Subject:From:Message-Id:Date; b=P+HcWHMp3yMmZk3Fcm/HwiRvs9kGvlZi0bSABE/BAeRXKusOvB0bJdLpD97qOqvkPLOeallktYvR5UErrjxZs+Jo4eXVIrDDDCsqLU5CqlacVUo3K9rGVVKkAFCrUClYE2Z9+6VUDOXg8zCJzjALSD1rkxH5CfnCtaJmN9OvlRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXNUPDRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXNUPDRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCE0C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755064793;
	bh=I97EhOxvatK+gtuwQ1kHBY/j5HjWTbwBliM+L6vSbTI=;
	h=To:Subject:From:Date:From;
	b=XXNUPDRqMthW0P1BSX4hAS1hbVrYeX+P1OOcjFpoP7oeIkNrs0/QuPDNkRxIuR3/q
	 Z//Np2RcI71llW5sdKanFq+P9nDV82vkKs5z6AmBCpsmUP3joAvBT+Y6Bbw9LqMbxF
	 nNQ8tAjP6Qs6sjkrRAY2EKlMwacVYZaAA3kILykfIEDWqiiuqy6L4p3eDWlqmM5uvg
	 0mqMyJWHlcDxDOua4MQwfhAUMJ3uok9hXmt/fAyVk+zYCmtWylDPeUNyFRvnjYC6Fm
	 4Rc5W/PoLY9uvuUz2V962JRiF7ZeL2vm8S5Yv9JhhECCHelusC5OoJ5tk43CaTmjcr
	 NVudIPUGpHEBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E66BC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506479357.14996.4542573734535283572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec5d09851427907a76cb520a1112ed89f858f38b0c706765515174ea4719a42
Date: Wed, 13 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755064793
