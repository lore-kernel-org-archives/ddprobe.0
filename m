Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2162E1DDA0E
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754158794; cv=none; b=MEvw/aI+T99zbEHXunPl1ZmlRSG1iprjjad+AQ92VDG16eHKHqCswzcH0I9EAw9fYPwc/ndqX2gld7B2dEaw3diIKsvtxhjG4Rbx7Gr+efcglrGPIC2v6rL5XgRhS2EGBMMnxFJURjbGbVxyaO70xodpi15SvJZ4lIOiyvuJSPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754158794; c=relaxed/simple;
	bh=wp5GjaXG5hoyul5WUaNMXf7Qp6AZt3JISJmPwxGNdy8=;
	h=To:Subject:From:Message-Id:Date; b=rShBZp1iup2Vt3GFj/+CZZz06CtKbSCmfGpkmr4rl8wPI7twfPHhIrV+dfuVq3Edn7nQaA9rdg8Xzfr8fnTdq3ql1oA6FMot9Ekj0sZz5tXqI7ScrJnBFXcR9zJuVj5+/HRrUXKPp2M40t6eAUwR3kLMqNCXUNO4cA0BhxQ2Cic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKTTmW8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKTTmW8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BAC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754158793;
	bh=wp5GjaXG5hoyul5WUaNMXf7Qp6AZt3JISJmPwxGNdy8=;
	h=To:Subject:From:Date:From;
	b=cKTTmW8tYf4jofVmJbsyh2kOzlBGSN3Ra2FsIdkgvle5f7Ajg2van6QQEWU0YfjId
	 0g/Bhq1oRDGEkWnEDHDY/aPiYMb1q+wALgWpO+fs8gudWLMzlV2NDUz13Bf6tFC9mu
	 hVbZ887co0qg/KPzHBpMdYEx3gwFXK/E/i1WqASRQltm0HG1rNvm3m1UB4QmAY9iOF
	 l+AvKe3oIqntN7pctloi1R624eMt/x7PmVey1e44ewJ1zGEWerz1wWAqgQgst9hSKm
	 zlDryXnXhTAj0L2HutrfAyL7RJDKWF+PIyKWmJlh9vnQKw5TlKoTF2K3OigMQwd+BT
	 4Dy7L/pIhWkrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75FC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415879357.16303.467977199334713983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0341043c177f0c81b04a589022cdb981954435f3c7fc1ee2beb99a3b18bf9083
Date: Sat, 02 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754158793
