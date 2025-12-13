Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB81194A76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765632774; cv=none; b=j2x/lhzjxrtIgl/LQxGW9V/5K9vyhbUt6F0jb7bWJBbMVJOEFaZMpcdqFJWzI7EEHQWn5p79zWRbmkVKAmR7WgBxT1VYTrb+XHuIBLkbIGUBaFq3lfnrxZB18az4iqyZKWsI0oXt5dXu8GS2TmSZxKvckOcN3MY+2gBVIvyIJjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765632774; c=relaxed/simple;
	bh=qdxgbajEqqpV3p2bghlk446FgnNMiUWnS95oZhrmaj0=;
	h=To:Subject:From:Message-Id:Date; b=qOu1nyQzrf6xM5Znu1xQ36iwNA8svCa+kM8RJ+7tbVBHc/+CPTVF546cyfw4+CkO5iGv3+r9P4iWiDIZUPwFax5uiig6orYN9g0zpxo4eDk3+yx+QO5lARVtl57aEm/XKjT8LmmI2jX8+biL5Cob5BUowuR5u8FAHVUS5ky1QKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEHcbqLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEHcbqLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84A9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765632773;
	bh=qdxgbajEqqpV3p2bghlk446FgnNMiUWnS95oZhrmaj0=;
	h=To:Subject:From:Date:From;
	b=uEHcbqLMWMKxhjT5kbMldUga0aGMDQZmrZt0OoUGr7Wdl0vNNOdTTWprTgWk0g9H6
	 KeF2EMkVRUVKjUD21PyXtTTpZKqcYhOfmEFpo0AyxUd6ADjn7/Zn1QxP68MsdO0leV
	 vb5Pg4eUv5GH8sLCMvx0npFuHO5EVfxFNsgNWPFdQnHZK/1KAH+JVEukNkJ8Z2pp+U
	 NP654mKdx4qP+Klvg1gEWLZ4xZ+/2x7iRYI83Pt1KMLRyUUfEKaiDvfV9zzk5ENMzP
	 14hJwAUeQAZ/SJHSDAtGOrbKr1nKfv/Ol2y+La7H564O7pPx0tPaux6Mb0AlvXkFpp
	 BnoAlAiDQeFQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378FD5AE41
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563277358.14876.5836065076847585376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9191bed77179db2510627c561328cbf60aaa3885af40c9cb1cc701e55607c4
Date: Sat, 13 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765632773
