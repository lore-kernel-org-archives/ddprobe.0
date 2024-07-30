Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C9D1E49E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722341754; cv=none; b=PeMoGawqpdslDhJABsaYmufxzVq3DB6RMPms8sOm95uRTt74rkSdCLEUVrvDIoAI6OdmLuFm2h23dur/DnqrANGsWHrAUweYmQslaAir9aQZz7TEQBr3q8AUELu2UT7aHht8bfaEfxpT872TzzZ9AMJDfVzCAIOtw0fPHpWvUTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722341754; c=relaxed/simple;
	bh=n6zMtTX48dwuTns5DuhRc2qe7iikn55ypyQ/nU2AmQM=;
	h=To:Subject:From:Message-Id:Date; b=NswatuUNGR2zgnOCDBS2/d/WwUuvrJhwdiJinQ5jh0Rs07BZkPqMZ8bb1YyzGdXW1qbjDXxWEQ15DNYrqNtzg0WruoDhTAZKQ1xgz+/8NHgT4y7lzrNkKBsDswS6BzKdSHFnXscDbB3b3jt7mOScDCKQNcIXQKRcO0tXTROgGgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nImSiRR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nImSiRR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EABC32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722341753;
	bh=n6zMtTX48dwuTns5DuhRc2qe7iikn55ypyQ/nU2AmQM=;
	h=To:Subject:From:Date:From;
	b=nImSiRR1Gk2Wsbkp7EHOCy3ety/Ta6wTmqr36UEQYTcT2Tz+iKvh44n6Wgv4p6wkZ
	 nKDZPN2ypggMd9Aw+iKPRUqGixyxrVUoeawzjtaunQ+J86By6yNqrIjPFytNyxSLY4
	 dxDY3HO43puRuFBbZ+R9yVKViWuSuTRm7QmFydSmxFvOw4+9PA3kN0oYmafdvC2Fed
	 ITTmLoGMTKn9PH881tLOOOAciLc4atob3+w3Eb/Tib6iO+F2vgy3VfT/p9Zy1jCzku
	 p3GTghQZ4+4Cq0UEn2pmk3bGnZsuaHApibj2XZzqnseVUjDRKoQSlQ4LYuY/LLf9g+
	 uMYCCBifpM5oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B08C3DA7E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172234175361.15765.10317246172045311530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc21a39e211702cdfe403a42908960a98f783d502ce2b76fd90f4925f891395
Date: Tue, 30 Jul 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722341753
