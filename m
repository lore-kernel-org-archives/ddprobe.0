Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1AF635
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724634954; cv=none; b=HAAE3RUtAc1rN3MysUfqwENFkphdZcajzLhwW8J7SIz5x2pOEzyxTfaDD12j/nHbnhM9hr5CekAu2V6Q/C3WL/Z5uqFFrqIBlUn1Nbe37RvNO5w+Of1CzesTmFFFzdOz6zzS5mZ0s1rH6ziEK6KE9VrPHT66KV06ybocVpH7tGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724634954; c=relaxed/simple;
	bh=AaEDi/1jh3yFr/mqyDlO8qdoRuEUtkVYIGsls0pUIt4=;
	h=To:Subject:From:Message-Id:Date; b=aJjrtLuaK8ZM8JyWgbzCrxl2mO41e5LL/xCmgqGZX0KAxzMLXjoxpP6ClzjONJx+NM67irJKQvCGM5ltG+FHoXQKG63pdSQTkzmeqgfYUI9WuGCURWGnPfqJTc8c++cjPfh9zEDPwEkIhq6ADLMksDEabG+LT8Y9GZAA+bDdpUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ustiK6J2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ustiK6J2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A861FC32782
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724634953;
	bh=AaEDi/1jh3yFr/mqyDlO8qdoRuEUtkVYIGsls0pUIt4=;
	h=To:Subject:From:Date:From;
	b=ustiK6J2CybexgvhHvCkjClAyArJYNimhU4srZKH1jHh2wPXylSYCxZ3ySe/BqfHM
	 oNO5UUuJb+g3Fi18auBLmZdwnbrux/TelW2uf1kJgF9ZKjO0va4G+zCTzlk2j8tWDK
	 8LNJbHH/vNmY3DTT9aLf4kum7UQxSIIgHVtb9//aRh0YuEDIYJwpVTCT+mYZLm+pn2
	 aLHAVj1d0DKsackV+F/aMI1KnaIllG87NRfPaGmaE9+diXvTQVYPpe2Fy+WD6bQVAW
	 DauwNRv5/7qcUZ6LjTSzDhPOQlrHXubT05u+gGeG3RsAJl2zBUtqp6lnSf+lLFnzDF
	 4kHqKT9XlMYDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0FC5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172463495357.17211.8510271756807075811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed589cf7d46d0346cbf858ac292b572e14575f35243dff46827525c045afb70
Date: Mon, 26 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724634953
