Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ED1149C6A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 22:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722896166; cv=none; b=YFlFqqNm1XPSByQxYFkoGBU/2OGOgUfu2dA1+NRqGx7jd9RtvoyxLqSsO11OQM0O0HKhJ2GADK8I4XBk1wCGWK79DWS8GNUA+VBV3g21H8rcK8NdKkHwxXOhAeb26E5NX9ASWmk6RIKrdhIB/HUwAJrWVCExDcW114xAVxjvIN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722896166; c=relaxed/simple;
	bh=9PvYN7P6HXGDONSdqtgPXpH9in7w0ad/Jn6NUQV6mwI=;
	h=To:Subject:From:Message-Id:Date; b=l8Plc3kn88j8ijcHlh+74XTLVPXGA72+/h7AqVRXUF1gk2Rvei55os/N4xZerkWMhbf78cmFXd12ONwZJlY5vWEk0I0+Br7cqECts4ND2oXZg+z6qDjsXoRsPYkvNY/Joj5T5sL6UK5/D+PUzxzK30y9FuYibt5cVPL8F3FTLR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkAWJLct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkAWJLct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9906C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 22:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722896155;
	bh=9PvYN7P6HXGDONSdqtgPXpH9in7w0ad/Jn6NUQV6mwI=;
	h=To:Subject:From:Date:From;
	b=bkAWJLctCdDfFUbDo5t/n8cvKLL0JrjZN/O0y7G8kjEt9nD42PumK4dYhx47KJVyQ
	 uzXkZT507rYKt7PZ2vUJZ7TyglJdFv/k5uS84sqr2j/iWoFCtp8ThJCNozMVgPHYZa
	 Xbu9+2bldAXtE5b5XoiR9VgTYcOEuwbtzimZLyR8p6usWTqq2e4ARkhErtfpAQZRH9
	 5ClT9/0OzgDCtjJZtLEmCGYMcE60JOWjdBZovhvJE5QcisXzTFe/DbTz4YWDfh1N4F
	 yegiSP7EB3bLx+KSm2ercku9FspXa2u8W3SwGaca+Wcs25NSKzc9m9bbrzorWfp+NS
	 saUPk6E3jMwtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D65C3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172289615362.13255.11473664100148367109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed6fe6263cb2f81c9c5a7fcb558553f4b52aa271772bd9272cfe3af95010259
Date: Mon, 05 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722896153
