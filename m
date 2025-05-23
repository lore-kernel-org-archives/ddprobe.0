Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1E02DCBF2
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747973994; cv=none; b=ipylvXgxlf498S46nfKjKgWn76AkqIDN1/TAQmF9jIew2gXX3EkwS4jOv3Lp/nHiL+MHKvlRTG1E3KUrzgEE5vUmUN9lEh2URhI3TcxavX5XEij9MU6XPn1GssFWqSmXJfR5C91kGe5SOWBvk8hItIUh77nSjjTI0Zj/ZVOEAWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747973994; c=relaxed/simple;
	bh=4wM7ilsq37KEfObcWJq1llBV6xQ9Xa5PB3EW+cbRAu4=;
	h=To:Subject:From:Message-Id:Date; b=hLEy5AWX9FLiCIP2zPvh7MSp8Lpf/JHrAK09U3DoI/IFFZ8Lnqv4Nwt1euuOEBr/9VG/GOtIvLWxy18eJR2iU/Ui+Xe+aNgHPc7SNFLgUOHeHnjQ3K6fRNy+us98BI16s3pzGtd2NumFhgziNkgWs6t7kXlLgraIOhUSTpKdi0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aL1b/leS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aL1b/leS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE4FC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747973993;
	bh=4wM7ilsq37KEfObcWJq1llBV6xQ9Xa5PB3EW+cbRAu4=;
	h=To:Subject:From:Date:From;
	b=aL1b/leSOyxCoZC2KOBBhYJ5vqtVZUd2xJWUrpd95gaLxLK29QQotcu0Zl07mCmW+
	 rUcR414Pha1t0GRKk6SXIAbXy9Aj+53jRH5lgNWd6VKr0dDbK7yYJtu+pha1UfF2H0
	 mfrnLAV7A0YUK7CaueF8Cw0ohdOIR6aMLBG6bm56eLA6W11JcZUzfmadKKeXP1UEle
	 yf0WWzo5owVmJr02UTBL30ibE+r83jyDEuWy3FO5utpeN5rIu+FCi84cA9epL0xbYI
	 JCBBKaMaWRK5eFb1vjph8SJyZcCe4Dpxb/sUkrILqe5o1l31f12aC2Cf2Pc22v4Ftn
	 vZ8YwHxV8D4pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9892DC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797399358.23926.600141857869308385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed5b06042284911b369215cac8bdc0f4f65e13193b58ec49ca653afa9fc4942
Date: Fri, 23 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747973993
