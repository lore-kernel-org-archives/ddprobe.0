Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22C31E1A33
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745825993; cv=none; b=uaHW0jg316cRXTheYx+RPkis3ej+N8qAtmX/+mrAETUra3P+1mhJiPN8LkWez6GUlE8jzoko+w2zl0aggy2bLCTYbCFY4dTlBpsp/YVFKqcq8LQPTMReW9X2DOWiT2hO3dJpzK2Vba2T8Zs2CHOPo+nb+HXLeHjkT9Rzfj68HrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745825993; c=relaxed/simple;
	bh=euIUR9/8hBDHaAEHSBSi/btrN28wK45fXsqj7/LT0RQ=;
	h=To:Subject:From:Message-Id:Date; b=eHzYJtqU/dpCPyOBVhCsqq3TBb8ZMClchCyyjNQQVEU1otz7KdEJ0AUIi71i09X0xtQHQfv71PBND7iu1wYpmU3Kwua9kF7mBy7i08LSWWNLQXpLTc82+Z0GTpPLnfg6NK59PTwAgWTC4HJQ1RSnXp1fkZHpctzdUbvv+ch+Byw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crsxK6C3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crsxK6C3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F68C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745825993;
	bh=euIUR9/8hBDHaAEHSBSi/btrN28wK45fXsqj7/LT0RQ=;
	h=To:Subject:From:Date:From;
	b=crsxK6C3BJVCyi4inaDMkOgye16M7eGxs8BuglV5LzCeJYJMqk7TFJWv95P6wIOKX
	 Dv0Yw0JFCZ3CM8RIbtjuV9/aGUKrSO4agWMzU1A0jkbLuEhr9BGz024MK72XCCDxar
	 bvbCUfiI/I4JQIuSwjr0Dh2FqOP5qstOmJ8b1KQuf8+igK54Kyb2fuSrntF7rTtEGp
	 qm6dTnQzPZCpVQl8X2JipVjAKqKY+rpVHtK4Kb5EQXqCSiRKPaWNfTx1uVTy9OvIoj
	 u2lZdwgQr+TIDSZMC9BHT8STMhpo7HpD+FZQ+Arzgia4+UaLT/afjpv37oU6FdL0Ff
	 bcDHUWVeE3kIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F2C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582599360.6999.12913081025971283519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1423c0a71ccd8c331ff0808e662e452b6f9ae0654aab48bc5937d086ee443a
Date: Mon, 28 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745825993
