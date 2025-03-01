Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3877A1B414F
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740855534; cv=none; b=CLwQE+BBBp6nZsC+TPEISNJvDBqiQjast/dUdO3RY05a309QuKk6uN51lsYGa8PyeroByW2mROlrjXYnFDgZHmct+TdS1dk1Zp5I35T8sBcC+M5oFtMWC98RdWQd+BVi5RZ5gDWpmq0bvAQlF3R7oZicbhGdKk+YUeXhC/K2lBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740855534; c=relaxed/simple;
	bh=s0s8xPA3lc0UwlKRB2qF9dJJ4kYIJ+BRe4/jgrrom2M=;
	h=To:Subject:From:Message-Id:Date; b=aeyJM6X5un8ZcaI80At9P3SmAQfjg6YOU10uVfzK9KKqGKp3TKVUOISSDMDJXbNXQWxIbh8ZmW7aUpI2ocHAtt767NCjNNl9f8ewgBTIwK3QUIN/3905ZfRsi0SZSB/lbzrK5V9T4WqLRqb+II4X+Rd68aI+4MhdGJIAhh/3/y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=he7uYcmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="he7uYcmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64C6C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740855533;
	bh=s0s8xPA3lc0UwlKRB2qF9dJJ4kYIJ+BRe4/jgrrom2M=;
	h=To:Subject:From:Date:From;
	b=he7uYcmL+XSxuVg7xEEEuoEtxDDpO/XnZQfhQuga7fnSR4SaW987N1q0iUXZh2y8m
	 ebrpOXzOh4a7hxF4a8ELkuoffNhpDM/QpAhpKTtzOrXB4nA3HpyJnWe3emQorwokpU
	 68qpLq56M6kUHNDmxOaV1kynZ0+a4T9H5Zv0kFjmsLQCFdllyIGN+dNqnK9knTDkkG
	 CgVQAGR/f0p6mBRIO4SAJXSzgrRnh4Sb/bJEu4hz3oXekFyNrTg/r3OoeIpqXTaJaS
	 FKJR/5xZ/qdDdhmBMa1svuh7JcLO14TJREV747ppc7taEfCiUGzJOjp+5UG195COpQ
	 jDoJ6yy3BM97g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DDDC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174085553357.16654.16462653603198352918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905c6fb89c6081fe237aa0c866fa56512b669292ca6eff4f77b9601762b111cd
Date: Sat, 01 Mar 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740855533
