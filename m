Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCF412D1E4
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709677696; cv=none; b=IAGYuPJlN9b8fHC4paBgQ+AS93Dz2SUMV331SN76/3C6DT8Aq7ZhjEwYn17a7u2409KCOOdS5udRXNtdk9w10AXPF3S0BHcBiOC1cAf9LJwVu4MXpf3iF5PmcJw7tv2/8I0OJye2MyLnWxDyibIEg8ui6VaLI7KRjw9HbENdwDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709677696; c=relaxed/simple;
	bh=Bh4s81UiEz0GujXVHl3O08sCSXEEroAJNPeZymDTK/w=;
	h=To:Subject:From:Message-Id:Date; b=az7b7FugiG9RRRrDpBCYQxx4jBUlioq8H0bghzIYhGZ0/fT7Rx5FdzQKY6MucO9GPwAbxxMX8STbOS385/2/RGwVUciGiRJOp1LvvvdlAa+9oi5Js5D25rDqwU3kIleRMWb1xpobyZpCQC3cq+FlOkMN16+cLjFgoWmb6slDKOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkK7EeAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkK7EeAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71EB8C433F1
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709677696;
	bh=Bh4s81UiEz0GujXVHl3O08sCSXEEroAJNPeZymDTK/w=;
	h=To:Subject:From:Date:From;
	b=dkK7EeAT5LqO9aByUveamzV+zJRE4sutmvEKOPgpF8SdtBLupPkHMC1iLJo6wv6Hf
	 mYgE7zCnCO2qM0BPryjOvIN/7KcBsC3Khr10WRiafgy5csI4hjsxYiYXfWUO9r6NEc
	 kLVIj7XcLvQnMyuWjKpEVK9qoVVbEeBKX7LJCWDTL4XdTvnHwxOGkYp25qPSDl+ziB
	 ObWw6Hd+ppi9Z4lSvhZEtcv1CCWhgf5qrIwePz17A+skwjVUnwkxZpDgq3hiFtxvsr
	 avhD+pKvW0s4nDk1cldYLEPt7PPjRLgQJ6gktDhDPgEplQ05+xNT86zj8AXi5BIHA4
	 jpjHLjmJuomIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D748C54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170967769637.22529.4541209820677156177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14278312dc3a9d605af510b0909433e258014d2640b753b1196090c48ad47a7
Date: Tue, 05 Mar 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709677696
