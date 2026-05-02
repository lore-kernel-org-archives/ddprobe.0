Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F77D13D51E
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777722454; cv=none; b=Yt+V1IlCp8hocBHalDZUQx+5BofjU2sF0z6+nDdj2lMH++eLOiuaoE2reGGoQCo+RwVBgcBRitjj6rPyARYeRNVn1wChCehR5f7cCvTsz2HeOYnOC4bAyLD+05UYxlW+Pj2+IcCCb5GhsM8g+d+j5Oures4QysGL48WkvcXXqnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777722454; c=relaxed/simple;
	bh=2g5ZQINxKtEZKMAFL7PiatNpScan2Dhp8gqfGEn942g=;
	h=To:Subject:From:Message-Id:Date; b=X2g3UiQNSagS99fi2M62EM69zbNPFSfBiUjXZiJUdW2Oat5kyyZ5R/7xnneM+NE76jy0PDI8gCcr98aVQ/Kscg23QDc5At/ENcaIgoJZn5IOzIQQXs6V+nfDmcx+a2Hr4Vkc5Rn+fH606RNiTXKBb/f/vazjPdNlGtZR7Igei98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zck3cIYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zck3cIYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1E5C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777722453;
	bh=2g5ZQINxKtEZKMAFL7PiatNpScan2Dhp8gqfGEn942g=;
	h=To:Subject:From:Date:From;
	b=Zck3cIYhZtfKhW3iDQGsQDdVhpDf0lQ4hvwTbP822nz57QE9wrx7L/7lSrSX2TYvg
	 KLoaS5hQnQDEk48VIT6uneVMs6zzb4E8erGIVWqKBb85fUaJFMunlZDQpxJW+kfe9t
	 3RiVNNucSmKhYyP0QPkhbPWO62FIVOlTCmqm5SgXeWjNTskp19UBw1rRpfyEoi0u68
	 Jccl69ZzAoUTmztQF7ELxxsXvtYuvrGwvpHHRkG3SkxUkqmUlBEe1xBiLxgF2pY/6r
	 dvPDaMpee5o4VlRNPtgLmOE+uPluScJkrrXIID6RG0vSH3/EKkNXnxWKN6nLWPjlLM
	 3P0vqiXXdDlnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA62DCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772245368.23030.2914272366487616272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80c47c9ccf133d1e32d573631966124f0840347e459006ce6c39cdead727d6a
Date: Sat, 02 May 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777722453
