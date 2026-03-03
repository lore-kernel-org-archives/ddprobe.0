Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6812F851
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772506494; cv=none; b=c0amyoipw5knqAiTOFoIC9yAKf/1Pq955j2TrqHzHWH9LsmA0jpspInqUdWLhehMWmYtPvVINVqJCz7uT94CXmATlTqAg3+9BaTnVG8/bDEyc78H/++fpNjD2FBQPV4kwUOyV/mD9G69/d7mVd4FFatwfS5ImfzTcBPGLtGnRbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772506494; c=relaxed/simple;
	bh=QHNWA4+foA6peMVOwzGmADGhzdH3qu1Q/+Vhjo6B9aA=;
	h=To:Subject:From:Message-Id:Date; b=smCxwFdnNHrQs/Yb3N5yKUMywmWDzHc+UIclJGSpSGgoXx/1ofvOFTlxL0Dxm4+OvPzDSzz+NaEHaJW8T7nTWwEG7SdSayopViGp+9AnTNhQtkvBuj84z4ardz30XPpoxvcRp0zKWPJhh5feG8fSf8zWjlPFm0Yh1VW3HEXZVsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUSTQnZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUSTQnZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12ACC2BC86
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772506493;
	bh=QHNWA4+foA6peMVOwzGmADGhzdH3qu1Q/+Vhjo6B9aA=;
	h=To:Subject:From:Date:From;
	b=AUSTQnZV0miG7kLjlSG2GtjYWMxiM7Lz6P+oj+jT2gJW/w5/9XoA82lem5Sy20Vlf
	 ArYzMw1rYaQ9rGUIKVEXx9Or9iHXbyggkaw3uieVXIjEtlLlhC4vQCAjNo0HAB0AYB
	 wQ+GOzi1KcpRFL+R9w1NEmFuzntZby2L+Erx09DRt3brjXmNj8xCE73OW6g6e+QuIa
	 gJEowdcBjrxqH9Nx6QFLgrMEY/NMqYAqaiqvSp1TsPrKaYhM7PcjtlMeFn3vBFZinX
	 hT6Z0766vxMHg0rS/IhTxKjBFyegPrwrTuw91aK3R/ek7u16ntsc4/LTa5YSekedQx
	 g/A4YfVH44uRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98038EB365A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250649360.13053.17471707192177088998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4419ef09a819ea315e0e3e6f5aa3d13f5b169c6c37a8022754ecb29d69ff39
Date: Tue, 03 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772506493
