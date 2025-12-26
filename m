Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A76C274FE3
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766735034; cv=none; b=nP3IOwjQUP4Kf/8RYlA4FvC//02cu4IEzRzaU/O1On9/qh4b/gwXnOX6FKlX1NxZ948jiOzeLyjqMwPM3MUvvls41bG1qeFjEubUYOpOf54F+Jk6qtlkNy5/QgMu+OkQ70qIu37GcGzmk9HfNZToUfYrfVgTLRrjbtYRTLNNDIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766735034; c=relaxed/simple;
	bh=6sga9ilV0cBioUX0vno1jpynmgj+XenvYd12km+oIng=;
	h=To:Subject:From:Message-Id:Date; b=Y4Ln/osgQVHT73DQ0jne79g1NXJZD2j6vV4Yq0jRLCCZwFzNp2T4CUMVszXlS+z6rL57Mg42X5ELImM6YEUfWXaz5obJsfyzbz8eFgKBdaG6Di7YFuY88zrmj2XEBuWBwKuZhvM3jIf60XqpOR7KcFLl8RkbkmAOSGsJJvxEQDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPcJQw1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPcJQw1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3757C116D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766735033;
	bh=6sga9ilV0cBioUX0vno1jpynmgj+XenvYd12km+oIng=;
	h=To:Subject:From:Date:From;
	b=vPcJQw1j7mVfGvz9DjxhpfCNKsWJMlrXb2t0/k5b9jPl/mabQAtrHVnuzh5zpbHA+
	 uba2/Sun0cGlHSJ1s9NUOAKYKYqfhsOTeSONFmBIsMTNngu6bFQBXiIw2RHJglqlYg
	 4Oujkw024sVYZin4yYHUyGNszT+lBVoQe3FBhSLvBDPYTbgIuWDD8EtbFzm3bOsaJg
	 N1yQVPYEKfwCUj/69Ef3v21LcitXl0etRIF6yLjRdLpfnamUWCSNwWevmtPTwmKu+M
	 V4lIW7enkSXISXVdyb9FD3vpG5gxQCS2Iz0IVUM/6wSW+hWguxnDhrpLQu7M5ECqYR
	 2YDxW0LivndBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC2E8FDA1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673503358.31111.1302929665991854902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 774147a64dea2de546e25280fe2029f516da866d5d52964b768653b3406ac6db
Date: Fri, 26 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766735033
