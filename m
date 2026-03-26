Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0701539527D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774521294; cv=none; b=SY5Jgdih5ve0a8HGpzMuqui1gGBEMpgT1igFOqg4r77cVG4TfcyA99NBxR38q9cWO9Ygw7lxO48hlL0549iSvbxOf9j7TFPWr5IuIc1pcvDj/BJ1ODU5SPtfDuUxtcw+igTsDXjhIuX8U4P1zeHGliSej8mkEXtD5biL2W3TS70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774521294; c=relaxed/simple;
	bh=zCjkiV9nJJMn4jvBm0TXVYsq+PeUCdK6upsg4eJX9MM=;
	h=To:Subject:From:Message-Id:Date; b=ljiiQxDYLg636JfS3Ww3vXNBCoxkv2lJGNY1f1TopzZgDw95DS/RLsrlp6uqvVdm8EaS0a8jBesdGiFIeCcMsNBnWnjPh8LXv8+JqVxBCYG2M6p8r6ehqXSi3HDfhLr0LUDa1Q9aw6PmsajBImLHDZxS+UmIcNDdCOdLk7ovKn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+DccBaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+DccBaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A026FC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774521293;
	bh=zCjkiV9nJJMn4jvBm0TXVYsq+PeUCdK6upsg4eJX9MM=;
	h=To:Subject:From:Date:From;
	b=S+DccBazY/5ePvJg7I0G3f0hWwXW/u9R7bmO52GJivFfKL5ib9iRTwUjura9RXYT8
	 eN97cQAR9mzq6ukX8LovzoIz0pQQK47R9/iRTNynWjs4EJhggqRxXZM77tENvIJLRi
	 v3MH7STkejNk/SznvDYwSnP5mE9O/bCbp4vZ4ECuQlxSRIwzRGvNWBAiCKzT4Fw36n
	 C9QVtCGM98Z5T/3ZpfdjZQpvZXBXQMJ1LigyNtRPh1iCD8IpQVWNv3/SnycvOEPV56
	 fh6bIoSn8EaYTBHndHuAFeBxRqxSHtgpaj9crwqR4bNzzj1bgcEYoo1Mvpl2GdKimF
	 QTXrChjKE+3EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170F109C047
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452129358.1935.14871601232806919643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0993802848b65ebfe8efbe972c69ba77b44e712eb19fdf8a6f122e847818b1fb
Date: Thu, 26 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774521293
